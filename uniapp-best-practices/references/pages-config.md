# pages.json 配置

## 完整配置示例

```json
{
  // 页面路径列表
  "pages": [
    {
      "path": "pages/index/index",
      "style": {
        "navigationBarTitleText": "首页",
        "enablePullDownRefresh": true,
        "navigationBarBackgroundColor": "#ffffff",
        "navigationBarTextStyle": "black"
      }
    },
    {
      "path": "pages/user/user",
      "style": {
        "navigationBarTitleText": "我的",
        "navigationStyle": "custom"
      }
    }
  ],

  // 全局样式
  "globalStyle": {
    "navigationBarTextStyle": "white",
    "navigationBarTitleText": "uni-app",
    "navigationBarBackgroundColor": "#007AFF",
    "backgroundColor": "#F8F8F8",
    "backgroundTextStyle": "dark"
  },

  // tabBar 配置
  "tabBar": {
    "color": "#7A7E83",
    "selectedColor": "#007AFF",
    "borderStyle": "black",
    "backgroundColor": "#F8F8F8",
    "list": [
      {
        "pagePath": "pages/index/index",
        "iconPath": "static/tab-home.png",
        "selectedIconPath": "static/tab-home-active.png",
        "text": "首页"
      },
      {
        "pagePath": "pages/user/user",
        "iconPath": "static/tab-user.png",
        "selectedIconPath": "static/tab-user-active.png",
        "text": "我的"
      }
    ]
  },

  // 预加载
  "preloadRule": {
    "pages/index/index": {
      "network": "all",
      "packages": ["pkg1"]
    }
  },

  // easycom 组件自动注册
  "easycom": {
    "autoscan": true,
    "custom": {
      "^uni-(.*)": "@dcloudio/uni-ui/lib/uni-$1/uni-$1.vue"
    }
  },

  // 分包配置
  "subPackages": [
    {
      "root": "pages-sub",
      "pages": [
        {
          "path": "detail/detail",
          "style": {
            "navigationBarTitleText": "详情"
          }
        }
      ]
    }
  ]
}
```

## 页面 style 配置

| 属性 | 类型 | 说明 |
|-----|------|------|
| navigationBarTitleText | String | 页面标题 |
| navigationBarBackgroundColor | HexColor | 导航栏背景颜色 |
| navigationBarTextStyle | String | 导航栏标题颜色 (white/black) |
| navigationStyle | String | 导航栏样式 (default/custom) |
| enablePullDownRefresh | Boolean | 是否开启下拉刷新 |
| onReachBottomDistance | Number | 页面上拉触底距离 (默认50px) |
| backgroundColor | HexColor | 页面背景颜色 |
| backgroundTextStyle | String | 下拉刷新样式 (dark/light) |
| rpxCalcMaxDeviceWidth | Number | rpx 计算最大宽度 |
| rpxCalcBaseDeviceWidth | Number | rpx 计算基准宽度 |

## 路由跳转方式

1. **pages.json** 配置的页面使用 `uni.navigateTo` 系列
2. **tabBar** 页面使用 `uni.switchTab`
3. **分包** 页面跳转需要使用完整路径
