# 条件编译

## 平台标识

| 平台 | 标识 |
|-----|------|
| H5 | `H5` |
| 微信小程序 | `MP-WEIXIN` |
| 支付宝小程序 | `MP-ALIPAY` |
| 百度小程序 | `MP-BAIDU` |
| 抖音小程序 | `MP-TOUTIAO` |
| QQ小程序 | `MP-QQ` |
| 快手小程序 | `MP-KUAISHOU` |
| 京东小程序 | `MP-JD` |
| 鸿蒙 Next | `MP-OPENHARMONY` |
| App | `APP-PLUS` |
| App iOS | `APP-PLUS-NVUE-IOS` |
| App Android | `APP-PLUS-NVUE-ANDROID` |

## 语法

### JavaScript / TypeScript

```javascript
// #ifdef 平台标识
// 代码仅在指定平台编译
// #endif

// #ifndef 平台标识
// 代码在除指定平台外编译
// #endif

// 多平台
// #ifndef H5 && !MP-WEIXIN
// 非 H5 和非微信小程序
// #endif
```

### Vue 模板

```vue
<template>
  <!-- #ifdef MP-WEIXIN -->
  <view>微信小程序</view>
  <!-- #endif -->
  
  <!-- #ifdef H5 -->
  <view>H5 网页</view>
  <!-- #endif -->
  
  <!-- #ifdef APP-PLUS -->
  <view>App 端</view>
  <!-- #endif -->
</template>
```

### CSS

```css
/* #ifdef H5 */
.container {
  padding-top: 44px;
}
/* #endif */

/* #ifdef MP-WEIXIN */
.container {
  padding-top: 0;
}
/* #endif */
```

### pages.json

```json
{
  "pages": [
    {
      "path": "pages/index/index",
      "style": {
        "navigationBarTitleText": "首页"
        // #ifdef MP-WEIXIN
        "navigationStyle": "custom"
        // #endif
      }
    }
  ]
}
```

## 常见场景

### 平台特有 API

```javascript
// #ifdef MP-WEIXIN
uni.getUserProfile({
  success: (res) => { }
})
// #endif

// #ifdef APP-PLUS
plus.camera.getCamera()
// #endif
```

### 平台特有组件

```vue
<template>
  <!-- #ifdef MP-WEIXIN -->
  <open-data type="userAvatarUrl"></open-data>
  <!-- #endif -->
  
  <!-- #ifndef MP-WEIXIN -->
  <image :src="avatarUrl"></image>
  <!-- #endif -->
</template>
```

### 不同平台不同样式

```css
/* #ifdef H5 */
.page-container {
  display: flex;
}
/* #endif */

/* #ifdef MP-WEIXIN */
.page-container {
  display: block;
}
/* #endif */
```
