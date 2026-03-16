# uni-app 生命周期

## 应用生命周期 (App.vue)

| 生命周期 | 说明 | 适用平台 |
|---------|------|---------|
| onLaunch | 应用启动 | 全平台 |
| onShow | 应用显示 | 全平台 |
| onHide | 应用隐藏 | 全平台 |
| onError | 报错时触发 | App |
| onPageNotFound | 页面不存在 | 全平台 |

## 页面生命周期

| 生命周期 | 说明 |
|---------|------|
| onLoad | 页面加载（只调用一次） |
| onShow | 页面显示（每次打开都调用） |
| onReady | 页面初次渲染完成 |
| onHide | 页面隐藏 |
| onUnload | 页面卸载 |
| onPullDownRefresh | 下拉刷新 |
| onReachBottom | 上拉加载更多 |
| onPageScroll | 页面滚动 |
| onShareAppMessage | 分享 |
| onShareTimeline | 分享到朋友圈 |
| onAddToFavorites | 收藏 |

## 组件生命周期

与 Vue 组件生命周期相同：
- `setup()` (Vue 3)
- `onMounted`, `onUpdated`, `onUnmounted` 等
