---
name: uniapp-responsive-skill
description: 为uni-app应用实现宽屏适配（PC、平板、折叠屏）的完整指南。当用户需要适配uni-app应用到宽屏设备、创建响应式布局、处理分栏显示、或优化PC端体验时，使用此skill。包含leftWindow/rightWindow/topWindow方案、match-media组件、rpx配置、分栏布局和响应式设计最佳实践。
---

# uni-app宽屏适配指南

此skill提供uni-app应用在宽屏设备（PC、平板、折叠屏）上的完整适配方案。uni-app以移动优先设计，但从2.9版本开始提供了完整的宽屏适配能力。

## 何时使用宽屏适配

在以下场景中使用此skill：
- 将手机应用适配到PC浏览器
- 为平板设备优化布局
- 处理折叠屏设备的分栏显示
- 创建响应式管理后台
- 优化H5在宽屏上的显示效果

## 核心适配方案

uni-app提供三种主要的宽屏适配方案，根据需求选择：

### 1. 页面窗体级方案：leftWindow/rightWindow/topWindow

这是最便捷的分栏式宽屏适配方案，**仅支持Web端**。通过扩展主窗口，在左右或上方添加额外窗口区域。

#### 配置示例（pages.json）

```json
{
  "globalStyle": {},
  "topWindow": {
    "path": "responsive/top-window.vue",
    "style": { "height": "44px" }
  },
  "leftWindow": {
    "path": "responsive/left-window.vue",
    "style": { "width": 300 },
    "matchMedia": { "minWidth": 768 }
  },
  "rightWindow": {
    "path": "responsive/right-window.vue",
    "style": { "width": "calc(100vw - 400px)" },
    "matchMedia": { "minWidth": 768 }
  }
}
```

#### 使用场景

- **rightWindow**：列表-详情分栏（如新闻应用）
- **leftWindow**：导航菜单（如管理后台）
- **topWindow**：顶部工具栏

#### 通信机制

窗口间通过全局事件通信：

```javascript
// 列表页面 - 点击项时
goDetail(detail) {
  if (this._isWidescreen) {
    // 宽屏：触发右侧窗口事件
    uni.$emit('updateDetail', { detail: detail })
  } else {
    // 窄屏：跳转新页面
    uni.navigateTo({ url: '/pages/detail/detail?query=' + detail })
  }
}

// rightWindow页面 - 监听事件
created() {
  uni.$on('updateDetail', (e) => {
    this.$refs.detailPage.load(e.detail)
  })
}
```

### 2. 组件级方案：match-media组件

在同一个页面内适配不同屏幕宽度，支持所有平台。

#### 基本用法

```vue
<template>
  <view>
    <match-media :min-width="768" :max-width="1024">
      <!-- 在768-1024px宽度时显示 -->
      <view>平板布局</view>
    </match-media>

    <match-media :min-width="1024">
      <!-- 大于1024px时显示 -->
      <view>PC宽屏布局</view>
    </match-media>

    <match-media :max-width="768">
      <!-- 小于768px时显示 -->
      <view>手机布局</view>
    </match-media>
  </view>
</template>
```

#### 响应式类名绑定

```vue
<template>
  <view :class="containerClass">
    <text>响应式内容</text>
  </view>
</template>

<script>
export default {
  data() {
    return {
      mediaQueryObserver: null
    }
  },
  computed: {
    containerClass() {
      return this.isWide ? 'wide-container' : 'narrow-container'
    }
  },
  mounted() {
    // 创建媒体查询观察器
    this.mediaQueryObserver = uni.createMediaQueryObserver(this)
    this.mediaQueryObserver.observe({ minWidth: 768 }, (matches) => {
      this.isWide = matches
    })
  },
  beforeDestroy() {
    this.mediaQueryObserver?.disconnect()
  }
}
</script>
```

### 3. 分栏布局方案（跨平台）

使用Vue组件特性实现跨平台分栏，适用于需要支持非Web端的场景。

#### 列表-详情分栏示例

```vue
<!-- list.vue -->
<template>
  <view class="container" :class="{ 'wide-screen': isWide }">
    <view class="list-section" :class="{ 'half-width': isWide }">
      <view v-for="item in listData" @click="showDetail(item.id)">
        <text>{{ item.title }}</text>
      </view>
    </view>

    <!-- 宽屏时显示详情分栏 -->
    <detail v-if="isWide" class="detail-section" />
  </view>
</template>

<script>
import detail from './detail.vue'

export default {
  components: { detail },
  data() {
    return {
      listData: [...],
      isWide: false
    }
  },
  onLoad() {
    // 检测设备类型
    const deviceInfo = uni.getDeviceInfo()
    this.isWide = ['pad', 'pc', 'tablet'].includes(deviceInfo.deviceType)

    // 或检测屏幕宽度
    const systemInfo = uni.getSystemInfoSync()
    this.isWide = systemInfo.windowWidth >= 768
  },
  methods: {
    showDetail(id) {
      if (this.isWide) {
        // 宽屏：通过事件通信
        uni.$emit('detailChanged', id)
      } else {
        // 窄屏：页面跳转
        uni.navigateTo({ url: `/pages/detail?id=${id}` })
      }
    }
  }
}
</script>

<style>
.container {
  display: flex;
  flex-direction: row;
}

.wide-screen .list-section.half-width {
  width: 50%;
  border-right: 1px solid #e0e0e0;
}

.detail-section {
  width: 50%;
}
</style>
```

## rpx配置优化

在宽屏上，rpx需要特殊配置以避免界面过大。

### 默认rpx配置

```json
{
  "globalStyle": {
    "rpxCalcMaxDeviceWidth": 960,     // rpx最大适配宽度（px）
    "rpxCalcBaseDeviceWidth": 375,    // 超过最大宽度时的基准宽度
    "rpxCalcIncludeWidth": 750        // 始终按实际宽度计算的rpx值
  }
}
```

### rpx转px方案

如果需要完全控制，可以将rpx转换为px：

1. **安装postcss插件**：
```bash
npm install postcss-px-to-viewport --save-dev
```

2. **配置postcss.config.js**：
```javascript
// postcss.config.js
module.exports = {
  plugins: {
    'postcss-px-to-viewport': {
      unitToConvert: 'rpx',
      viewportWidth: 200,  // 200rpx = 100px (根据需求调整)
      unitPrecision: 5,
      propList: ['*'],
      viewportUnit: 'px',
      fontViewportUnit: 'px',
      selectorBlackList: [],
      minPixelValue: 1,
      mediaQuery: false,
      replace: true
    }
  }
}
```

## 响应式设计最佳实践

### 1. 移动优先设计
- 先完成手机端布局
- 逐步增强宽屏体验
- 使用渐进式布局策略

### 2. 断点选择
```javascript
const breakpoints = {
  mobile: 0,      // 手机
  tablet: 768,    // 平板
  desktop: 1024,  // 桌面
  wide: 1280      // 宽屏
}
```

### 3. 条件渲染策略
- 使用`v-if`/`v-show`控制组件显示
- 不同断点使用不同组件
- 保持状态同步

### 4. 导航适配
```vue
<template>
  <!-- 手机：底部tabbar -->
  <view v-if="isMobile">
    <tabbar />
  </view>

  <!-- 宽屏：侧边导航 -->
  <view v-else class="desktop-layout">
    <sidebar />
    <main-content />
  </view>
</template>
```

## 常见问题解决

### 1. TabBar在宽屏隐藏
```css
/* 当显示leftWindow时隐藏tabbar */
.uni-app--showleftwindow + .uni-tabbar-bottom {
  display: none;
}
```

### 2. 宽屏下的滚动问题
```css
/* 为分栏设置独立滚动 */
.left-window, .right-window {
  height: 100vh;
  overflow-y: auto;
}
```

### 3. 图片和媒体响应式
```vue
<image
  :src="imageSrc"
  mode="widthFix"
  :style="{ maxWidth: isWide ? '50%' : '100%' }"
/>
```

### 4. 表单布局优化
```vue
<view class="form-container" :class="{ 'horizontal': isWide }">
  <view class="form-item">
    <text class="label">用户名</text>
    <input class="input" />
  </view>
</view>

<style>
.form-container.horizontal .form-item {
  display: flex;
  flex-direction: row;
  align-items: center;
}
.form-container.horizontal .label {
  width: 120px;
  margin-right: 16px;
}
</style>
```

## 测试和调试

### 1. 多设备预览
- 使用Chrome开发者工具设备模拟
- 测试不同分辨率
- 验证横竖屏切换

### 2. 条件编译
```javascript
// #ifdef H5
// H5特有宽屏逻辑
if (window.innerWidth >= 768) {
  this.enableWideLayout()
}
// #endif
```

### 3. 性能考虑
- 避免过度复杂的媒体查询
- 使用CSS而非JS处理布局变化
- 懒加载宽屏专用组件

## 进阶方案

### 1. 响应式栅格系统
使用uni-row组件创建流式布局：
```vue
<uni-row>
  <uni-col :xs="24" :sm="12" :md="8" :lg="6" :xl="4">
    <view class="card">内容</view>
  </uni-col>
</uni-row>
```

### 2. 动态主题切换
```javascript
// 根据屏幕宽度切换主题
watch: {
  screenWidth(newWidth) {
    if (newWidth >= 1024) {
      this.$store.commit('setTheme', 'desktop')
    } else {
      this.$store.commit('setTheme', 'mobile')
    }
  }
}
```

### 3. Electron打包
将适配好的Web应用打包为桌面应用：
```bash
# 安装electron插件
npm install @dcloudio/electron-builder
```

## 资源推荐

1. **官方示例**：
   - [hello uni-app](https://hellouniapp.dcloud.net.cn/) - 演示topWindow/leftWindow
   - [新闻模板](https://github.com/dcloudio/uni-template-news) - 列表-详情分栏

2. **UI框架**：
   - [uView UI](https://www.uviewui.com/) - 支持响应式
   - [uni-ui](https://github.com/dcloudio/uni-ui) - 官方组件库

3. **调试工具**：
   - Chrome DevTools设备模拟
   - HBuilderX真机运行

记住：宽屏适配的核心思想是**渐进增强**而非完全重写。从手机布局开始，逐步添加宽屏优化，保持代码统一和维护性。