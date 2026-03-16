---
name: uniapp-best-practices
description: uni-app 跨平台应用开发最佳实践。用于 uni-app、小程序、H5、App 开发任务。默认使用 Vue 3 + Composition API。
license: MIT
metadata:
  author: github.com/dcloudio
  version: "1.0.0"
---

# uni-app Best Practices Workflow

使用此 skill 作为指令集。按顺序遵循工作流程，除非用户明确要求不同顺序。

## 核心原则

- **跨平台优先**：一套代码，多端运行。编写时考虑多端兼容。
- **条件编译**：平台特有代码使用 `#ifdef` / `#ifndef` 条件编译。
- **遵循小程序规范**：组件标签、API 命名与小程序保持一致。
- **性能优化**：注意各端的性能差异，特别是 App 端。

## 1) 确认技术栈（必需）

### 1.1 确定 Vue 版本

- **Vue 3**（推荐）：基于 Vite，性能更快
- **Vue 2**：基于 webpack，传统项目使用

### 1.2 确定目标平台

- H5（Web）
- 微信小程序
- 支付宝小程序
- App（iOS/Android）
- 鸿蒙 Next

### 1.3 了解项目结构

uni-app 项目标准结构：
```
├── pages/
│   └── index/
│       └── index.vue
├── components/
├── static/
├── App.vue
├── main.js
├── manifest.json
└── pages.json
```

## 2) 必需的基础知识

### 2.1 生命周期

uni-app 有两类生命周期：**应用生命周期**和**页面生命周期**。

#### 应用生命周期（App.vue）

```javascript
// App.vue
<script>
export default {
  onLaunch: function() {
    console.log('App Launch')
    // 应用启动
  },
  onShow: function() {
    console.log('App Show')
    // 应用显示
  },
  onHide: function() {
    console.log('App Hide')
    // 应用隐藏
  }
}
</script>
```

#### 页面生命周期（pages/*.vue）

| 生命周期 | 说明 |
|---------|------|
| onLoad | 页面加载 |
| onShow | 页面显示 |
| onReady | 页面初次渲染完成 |
| onHide | 页面隐藏 |
| onUnload | 页面卸载 |
| onPullDownRefresh | 下拉刷新 |
| onReachBottom | 上拉加载更多 |
| onPageScroll | 页面滚动 |
| onShareAppMessage | 分享 |

### 2.2 组件规范

- 所有组件与属性名都是**小写**，单词之间以连字符 `-` 连接
- 根节点：Vue 2 下 `<template>` 下只能且必须有一个根 `<view>`；Vue 3 不限制
- 事件绑定使用 Vue 语法：`@click="handler"` 而不是 `bindclick="handler"`

### 2.3 API 规范

- 统一使用 `uni.` 前缀
- 微信小程序的 `wx.` 会自动转换为 `uni.`
- 示例：`uni.request`, `uni.navigateTo`, `uni.getStorage`

### 2.4 路由与页面跳转

| API | 说明 |
|-----|------|
| uni.navigateTo | 保留当前页，跳转 |
| uni.redirectTo | 关闭当前页，跳转 |
| uni.reLaunch | 关闭所有页，跳转 |
| uni.switchTab | 跳转到 tabBar 页面 |
| uni.navigateBack | 返回上一页 |

页面栈最多 10 层。

### 2.5 数据存储

| API | 说明 |
|-----|------|
| uni.setStorage | 异步存储 |
| uni.setStorageSync | 同步存储 |
| uni.getStorage | 异步获取 |
| uni.getStorageSync | 同步获取 |
| uni.removeStorage | 异步删除 |
| uni.clearStorage | 异步清空 |

## 3) 组件开发

### 3.1 基础组件

uni-app 内置基础组件，与小程序规范相近：

**视图容器**：`view`, `scroll-view`, `swiper`, `movable-area`, `movable-view`, `cover-view`

**基础内容**：`text`, `icon`, `rich-text`, `progress`

**表单组件**：`button`, `checkbox`, `radio`, `input`, `textarea`, `picker`, `slider`, `switch`, `form`

**媒体组件**：`image`, `audio`, `video`, `camera`

**地图**：`map`

**路由**：`navigator`

### 3.2 扩展组件

使用 uni-ui 等扩展组件库：

```vue
<template>
  <!-- 无需 import，直接使用 -->
  <uni-rate v-model="rating" />
</template>
```

符合 `easycom` 规范的组件：自动注册，无需手动 import。

### 3.3 条件渲染

- `v-if` / `v-else` / `v-else-if`：条件渲染
- `v-show`：显示/隐藏（始终渲染）
- `v-for`：列表渲染，需指定 `:key`

### 3.4 双向绑定

- 表单组件使用 `v-model`
- 自定义组件：`props` + `$emit('update:modelValue')`

## 4) 条件编译

### 4.1 平台标识

| 平台 | 标识 |
|-----|------|
| H5 | `H5` |
| 微信小程序 | `MP-WEIXIN` |
| 支付宝小程序 | `MP-ALIPAY` |
| App | `APP-PLUS` |
| App iOS | `APP-PLUS-NVUE-IOS` |
| App Android | `APP-PLUS-NVUE-ANDROID` |

### 4.2 语法

```javascript
// 只在 H5 平台执行
// #ifdef H5
console.log('H5 only')
// #endif

// 除了 H5 都执行
// #ifndef H5
console.log('not H5')
// #endif

<!-- 模板中条件编译 -->
<!-- #ifdef MP-WEIXIN -->
<view>微信小程序专属</view>
<!-- #endif -->
```

### 4.3 pages.json 条件编译

```json
{
  "pages": [
    {
      "path": "pages/index/index",
      "style": {
        "navigationBarTitleText": "首页"
      }
    }
  ],
  "globalStyle": {
    "navigationBarTextStyle": "white"
  },
  "tabBar": {
    "list": [
      {
        "pagePath": "pages/index/index",
        "text": "首页"
      }
    ]
  }
}
```

## 5) 样式与布局

### 5.1 单位

- 推荐使用 `rpx`（响应式像素）
- 750rpx = 屏幕宽度
- App 端建议使用 flex 布局

### 5.2 注意事项

- 不建议使用 HTML 标签（如 `div`, `span`），编译器会转换
- `div` → `view`, `span` → `text`, `a` → `navigator`
- 原生组件（`video`, `map`）层级高于普通组件，需用 `cover-view` 覆盖

### 5.3 样式隔离

- 全局样式：`App.vue` 的 `<style>`
- 页面样式：`<style scoped>` 或页面级样式
- 公共样式：创建 `common.scss` 并在 `App.vue` 引入

## 6) 性能优化

### 6.1 通用优化

- 使用 `onLoad` 而非 `onShow` 做数据加载
- 列表使用 `v-for` 并添加 `:key`
- 长列表使用 `scroll-view` 或虚拟列表
- 图片使用 `lazy-load`

### 6.2 App 端优化

- 避免频繁 setData
- 大数据量使用 `recycle-list` 或 `nvue` 原生渲染
- 图片压缩：`uni.compressImage`
- 使用 `nvue` 处理高性能需求场景

### 6.3 小程序端优化

- 合理使用 `setData`，避免传输大量数据
- 使用 `wxs` 处理复杂渲染
- 分包加载

## 7) 常见问题

### 7.1 平台差异

- 各端 API 能力不完全一致，使用前用 `uni.canIUse()` 判断
- 样式在各端可能有细微差异

### 7.2 原生组件层级

- `video`, `map`, `canvas` 等原生组件层级最高
- 需要用 `cover-view` 覆盖

### 7.3 调试

- H5：浏览器开发者工具
- 微信小程序：微信开发者工具
- App：HBuilderX 控制台或真机调试

## 8) 最终检查

- [ ] 确认目标平台和 Vue 版本
- [ ] 生命周期正确使用
- [ ] 组件和 API 命名符合规范
- [ ] 条件编译处理平台差异
- [ ] 样式适配各端
- [ ] 性能优化已考虑
- [ ] 页面路由配置正确（pages.json）
