# Claude Code Skills 技能文档

本文档介绍本项目安装的所有 Skill 的作用和使用场景。

---

## 目录

1. [i-teach-impeccable](#1-i-teach-impeccable-设计上下文建立) - 建立设计上下文
2. [i-frontend-design](#2-i-frontend-design-前端界面设计) - 前端界面设计核心
3. [i-critique](#3-i-critique-设计评论) - 设计评估与反馈
4. [i-audit](#4-i-audit-技术质量审计) - 技术质量检查
5. [i-optimize](#5-i-optimize-性能优化) - 性能诊断与修复
6. [i-adapt](#6-i-adapt-跨设备适配) - 响应式与跨设备适配
7. [i-arrange](#7-i-arrange-布局优化) - 布局与间距优化
8. [i-typeset](#8-i-typeset-排版改进) - 排版改进
9. [i-colorize](#9-i-colorize-色彩添加) - 战略性色彩添加
10. [i-bolder](#10-i-bolder-视觉增强) - 视觉冲击增强
11. [i-quieter](#11-i-quieter-视觉柔和) - 视觉强度降低
12. [i-clarify](#12-i-clarify-文案优化) - UX文案改进
13. [i-onboard](#13-i-onboard-新手引导) - 新手引导设计
14. [i-delight](#14-i-delight-愉悦体验) - 愉悦体验添加
15. [i-animate](#15-i-animate-动画设计) - 动画与微交互
16. [i-polish](#16-i-polish-最终打磨) - 最终质量打磨
17. [i-distill](#17-i-distill-设计简化) - 简化设计
18. [i-extract](#18-i-extract-组件提取) - 组件与模式提取
19. [i-normalize](#19-i-normalize-设计系统对齐) - 设计系统对齐
20. [i-harden](#20-i-harden-健壮性增强) - 健壮性增强
21. [i-overdrive](#21-i-overdrive-极致实现) - 技术突破实现
22. [shiji-jiucai-dynamic](#22-shiji-jiucai-dynamic-史诗级韭菜投资方法论) - 港股价值投资
23. [vue-best-practices](#23-vue-best-practices-vue3-最佳实践) - Vue 3 最佳实践
24. [vue-debug-guides](#24-vue-debug-guides-vue3-调试指南) - Vue 3 调试与排错
25. [vue-pinia-best-practices](#25-vue-pinia-best-practices-pinia-状态管理) - Pinia 状态管理
26. [vue-router-best-practices](#26-vue-router-best-practices-vue-router-路由) - Vue Router 路由
27. [vue-jsx-best-practices](#27-vue-jsx-best-practices-vue-jsx-语法) - Vue JSX 语法
28. [vue-options-api-best-practices](#28-vue-options-api-best-practices-options-api) - Options API
29. [vue-testing-best-practices](#29-vue-testing-best-practices-vue-测试) - Vue 测试
30. [create-adaptable-composable](#30-create-adaptable-composable-可适配-composable) - 可适配 Composable
31. [uniapp-best-practices](#31-uniapp-best-practices-uni-app-跨平台开发) - uni-app 跨平台开发
32. [uniapp-responsive-skill](#32-uniapp-responsive-skill-uni-app-宽屏适配) - uni-app 宽屏适配
33. [docx](#33-docx-word-文档处理) - Word 文档处理
34. [pdf](#34-pdf-pdf-处理) - PDF 处理
35. [xlsx](#35-xlsx-excel-表格处理) - Excel 表格处理
36. [frontend-design](#36-frontend-design-前端界面设计) - 前端界面设计
37. [ffmpeg-video-tools](#37-ffmpeg-video-tools-视频处理) - FFmpeg 视频处理
38. [yt-dlp-downloader](#38-yt-dlp-downloader-视频下载) - 视频下载
39. [bilibili-dynamic](#39-bilibili-dynamic-b站动态获取) - B站动态获取
40. [skill-creator](#40-skill-creator-技能创建工具) - 技能创建工具

---

## 1. i-teach-impeccable - 设计上下文建立

**描述**: 一次性设置，收集项目设计上下文并保存到 AI 配置文件，为后续所有设计工作提供持久化的设计指导原则。

**触发场景**:
- 首次使用本项目的设计技能
- 需要建立设计上下文
- 新项目需要定义设计方向

**工作流程**:
1. 探索代码库了解现有设计模式
2. 询问 UX 相关问题（用户、目标、品牌个性）
3. 将设计上下文写入 `.impeccable.md`
4. 可选择同步到 CLAUDE.md

---

## 2. i-frontend-design - 前端界面设计

**描述**: 创建独特的、生产级的前端界面，避免通用的 "AI slop" 美学。是所有其他设计技能的基座。

**触发场景**:
- 构建网页组件
- 创建页面
- 任何需要设计上下文的技能调用前

**核心原则**:
- **Context Gathering Protocol**: 所有设计技能必须先获取项目上下文
- **AI Slop Test**: 避免 AI 生成设计的典型特征（渐变文字、紫色蓝色渐变、glassmorphism 等）
- **意图明确**: 选择清晰的美学方向并精确执行
- **差异化**: 界面应该让人记住，而不是看起来像 AI 生成的

**设计指南**:
- 字体：选择独特、有趣的字体，避免 Inter、Roboto 等通用字体
- 颜色：使用 OKLCH 等现代色彩函数，避免灰色文字在彩色背景上
- 布局：通过变化间距创建视觉节奏，不一切都居中
- 动效：使用 ease-out-quart/quint/expo 缓动，避免 bounce/elastic

---

## 3. i-critique - 设计评论

**描述**: 从 UX 角度评估设计，评估视觉层次、信息架构、情感共鸣、认知负荷，并提供定量评分和可操作的反馈。

**触发场景**:
- 请求审查、评论、评估设计
- 设计反馈

**核心内容**:
- **AI Slop 检测**: 检查是否像 AI 生成的设计
- **Nielsen 10 启发式评估**: 0-4 分评分
- **用户画像红牌**: 针对不同用户类型的分析
- **优先级问题**: P0-P3 严重级别标记

---

## 4. i-audit - 技术质量审计

**描述**: 对无障碍、性能、主题化、响应式设计和反模式进行全面的技术质量检查，生成带 P0-P3 严重级别评分的报告。

**触发场景**:
- 无障碍检查
- 性能审计
- 技术质量审查

**检查维度**:
1. **无障碍 (A11y)**: 对比度、ARIA、键盘导航、语义化 HTML
2. **性能**: 布局抖动、动画优化、图片优化、Bundle 大小
3. **响应式设计**: 固定宽度、触摸目标、水平滚动
4. **主题化**: 硬编码颜色、暗色模式、token 使用
5. **反模式**: AI slop 特征、设计反模式

---

## 5. i-optimize - 性能优化

**描述**: 诊断和修复 UI 性能问题，包括加载速度、渲染、动画、图片和 Bundle 大小。

**触发场景**:
- 页面加载慢
- 卡顿、掉帧
- Bundle 过大
- 想要更快的体验

**优化领域**:
- **Core Web Vitals**: LCP < 2.5s, INP < 200ms, CLS < 0.1
- **加载性能**: 图片优化、代码分割、CSS 优化、字体优化
- **渲染性能**: 避免布局抖动、减少重绘、GPU 加速
- **动画性能**: transform/opacity 动画、requestAnimationFrame

---

## 6. i-adapt - 跨设备适配

**描述**: 使设计能够在不同屏幕尺寸、设备、上下文或平台间有效工作，实现响应式布局和触摸目标。

**触发场景**:
- 响应式设计
- 移动端适配
- 跨设备兼容性

**适配策略**:
- **Mobile**: 单栏布局、底部导航、44x44px 触摸目标
- **Tablet**: 双栏布局、侧边面板、方向适配
- **Desktop**: 多栏布局、键盘快捷键、右键菜单
- **Print**: 页面布局优化、移除交互元素、黑白打印

---

## 7. i-arrange - 布局优化

**描述**: 改进布局、间距和视觉节奏，修复单调的网格、不一致的间距和薄弱的视觉层次。

**触发场景**:
- 布局感觉不对
- 间距问题
- 视觉层次不清
- 对齐问题

**核心内容**:
- **间距系统**: 使用一致的间距刻度
- **视觉节奏**: 紧密分组与宽松分隔的交替
- **Flexbox vs Grid**: 根据需求选择合适的布局工具
- **打破卡片网格单调性**: 不要默认用卡片网格

---

## 8. i-typeset - 排版改进

**描述**: 通过修复字体选择、层次、大小、重量和可读性来改进排版，使文本看起来有意图。

**触发场景**:
- 字体问题
- 排版问题
- 可读性问题
- 文本层次不清

**核心内容**:
- **字体选择**: 反映品牌个性，避免默认字体
- **层次建立**: 5 种尺寸覆盖大多数需求（caption、secondary、body、subheading、heading）
- **可读性**: 行长 45-75 字符，行高适当
- **使用 OKLCH 颜色**: 等亮度步长看起来相等

---

## 9. i-colorize - 色彩添加

**描述**: 为过于单调或缺乏视觉兴趣的功能添加战略性色彩，使界面更具吸引力和表现力。

**触发场景**:
- 设计看起来灰色、单调
- 缺乏温暖感
- 需要更多颜色

**色彩策略**:
- **语义色**: Success (绿)、Error (红)、Warning (橙)、Info (蓝)
- **强调色应用**: 主操作按钮、链接、图标着色
- **背景与表面**: 使用微暖或微冷的色调
- **OKLCH 色彩空间**: 感知均匀的色彩

---

## 10. i-bolder - 视觉增强

**描述**: 放大安全或无聊的设计，使其更具视觉冲击力和趣味性，在保持可用性的同时增强效果。

**触发场景**:
- 设计看起来平淡、通用
- 太安全
- 缺乏个性
- 想要更多视觉冲击

**核心内容**:
- **排版放大**: 极端尺寸对比、重量对比
- **色彩强化**: 增加饱和度、引入意外配色
- **空间戏剧性**: 打破网格、非对称布局
- **视觉特效**: 戏剧性阴影、纹理、边框

**警告**: 避免 AI slop 陷阱——紫色/青色渐变、glassmorphism 不是 bold

---

## 11. i-quieter - 视觉柔和

**描述**: 调低视觉过于激进或过度刺激的设计，在保持质量的同时降低强度。

**触发场景**:
- 太粗犷
- 太响亮
- 令人不知所措
- 想要更平静、更精致的外观

**核心内容**:
- **颜色细化**: 降低饱和度、使用柔和色调
- **视觉重量减轻**: 减小字体重量、增加留白
- **简化**: 移除装饰元素、简化形状
- **动效减少**: 缩短动画距离、使用细腻缓动

---

## 12. i-clarify - 文案优化

**描述**: 改进不清晰的 UX 文案、错误消息、微文案、标签和说明，使界面更易于理解。

**触发场景**:
- 文案混乱
- 标签不清晰
- 错误消息不佳
- 说明难以理解

**核心内容**:
- **错误消息**: 解释出了什么问题，如何修复
- **表单标签**: 清晰、具体
- **按钮文本**: 描述动作，主动语态
- **空状态**: 解释为什么为空，显示下一步行动

---

## 13. i-onboard - 新手引导

**描述**: 设计和改进引导流程、空状态和首次体验，帮助用户快速实现价值。

**触发场景**:
- 新手引导
- 首次用户
- 空状态
- 激活流程

**核心内容**:
- **展示而非叙述**: 使用实际示例演示
- **让用户可选**: 提供跳过选项
- **快速实现价值**: 尽快让用户达到"顿悟时刻"
- **上下文优于仪式**: 在用户需要时教学

---

## 14. i-delight - 愉悦体验

**描述**: 添加愉悦时刻、个性和意想不到的触点，使界面令人难忘且使用愉快。

**触发场景**:
- 添加动画
- 个性化
- 微交互
- 让界面更有趣

**愉悦时刻**:
- **成功状态**: 完成操作
- **空状态**: 首次体验
- **加载状态**: 等待期间
- **成就**: 里程碑、连续、完成

---

## 15. i-animate - 动画设计

**描述**: 审查功能并添加有目的的动画、微交互和动效，提高可用性并带来愉悦感。

**触发场景**:
- 添加动画
- 过渡效果
- 微交互
- 悬停效果

**动画类别**:
- **入场动画**: 页面加载编排、英雄区域、内容揭示
- **微交互**: 按钮反馈、表单交互、开关
- **状态转换**: 显示/隐藏、展开/折叠
- **导航与流程**: 页面转换、标签切换

**技术要点**:
- 使用 `transform` 和 `opacity`（GPU 加速）
- 缓动曲线：ease-out-quart/quint/expo
- 尊重 `prefers-reduced-motion`

---

## 16. i-polish - 最终打磨

**描述**: 在发布前进行最终质量检查，修复对齐、间距、一致性和微细节问题。

**触发场景**:
- 打磨
- 收尾
- 发布前审查
- 感觉哪里不对

**检查清单**:
- 视觉对齐完美
- 间距使用设计 token
- 排版层次一致
- 所有交互状态已实现
- 所有过渡平滑
- 触摸目标 44x44px 最小
- 对比度满足 WCAG AA

---

## 17. i-distill - 设计简化

**描述**: 将设计剥离到本质，移除不必要的复杂性。伟大的设计是简单、强大和干净的。

**触发场景**:
- 简化
- 减少噪音
- 移除元素
- 更清晰的 UI

**核心内容**:
- **信息架构简化**: 减少范围、渐进披露
- **视觉简化**: 减少颜色、限制排版、移除装饰
- **布局简化**: 线性流程、移除侧边栏
- **交互简化**: 减少选择、智能默认值

---

## 18. i-extract - 组件提取

**描述**: 提取并整合可复用组件、设计 token 和模式到设计系统中。

**触发场景**:
- 创建组件
- 重构重复 UI 模式
- 建立设计系统
- 提取 token

**工作流程**:
1. **发现**: 查找设计系统和重复模式
2. **规划**: 确定提取优先级
3. **提取**: 创建可复用组件和 token
4. **迁移**: 替换现有使用
5. **文档**: 更新设计系统文档

---

## 19. i-normalize - 设计系统对齐

**描述**: 审计并重新对齐 UI 以匹配设计系统标准、间距、token 和模式。

**触发场景**:
- 一致性问题
- 设计漂移
- 样式不匹配
- token 问题

**核心内容**:
- **排版**: 使用设计系统字体、尺寸、重量
- **颜色**: 应用设计系统颜色 token
- **间距与布局**: 使用间距 token
- **组件**: 替换为设计系统组件

---

## 20. i-harden - 健壮性增强

**描述**: 通过更好的错误处理、i18n 支持、文本溢出处理和边界情况管理提高接口弹性。

**触发场景**:
- 强化
- 生产就绪
- 边界情况处理
- 错误状态

**核心内容**:
- **文本溢出**: 单行省略号、多行 clamp、flex/grid 溢出
- **国际化**: 文本扩展（德语比英语长 30%）、RTL 支持、CJK 字符
- **错误处理**: 网络错误、表单验证、API 错误
- **边界情况**: 空状态、大数据集、并发操作

---

## 21. i-overdrive - 极致实现

**描述**: 使用技术上超越常规的实现——着色器、弹簧物理、滚动驱动动画、60fps 动画。

**触发场景**:
- 想要令人惊叹
- 技术上大胆
- 非凡的界面

**技术工具**:
- **View Transitions API**: 电影级过渡
- **Scroll-driven animations**: CSS 滚动驱动动画
- **Spring physics**: 自然运动
- **WebGL/Canvas**: 自定义渲染
- **Virtual scrolling**: 虚拟滚动处理大数据集

**注意**: 必须先询问用户方向，并提供优雅降级

---

## 22. shiji-jiucai-dynamic - 史诗级韭菜投资方法论

**描述**: 基于B站UP主"史诗级韭菜"的价值投资方法论，适用于港股烟蒂股筛选、高股息策略分析、央企国企投资配置、越跌越买操作策略。

**触发场景**:
- 询问股票估值方法
- 高股息投资
- 港股投资策略
- 价值投资分析
- PB/股息率筛选
- 央企国企配置

**核心内容**:
- 港股烟蒂股专家：专注港股市场深度价值挖掘
- 高股息策略：以股息率为核心的现金回报导向
- 央国企配置：政治风险考量下的安全边际选择
- 越跌越买：逆向投资的操作执行框架

**核心理念**:
- 投资本质三问：成本、回报、股息
- 核心指标：PB（市净率）< 0.5、股息率 > 6%、PE < 10
- 捡垃圾策略：垃圾资产配垃圾价格 = 好投资
- 现金淹没市值：寻找净现金接近或超过市值的标的

---

## 23. vue-best-practices - Vue3 最佳实践

**描述**: Vue.js 开发必备技能。强制推荐使用 Composition API 和 `<script setup>` 与 TypeScript。涵盖 Vue 3、SSR、Volar、vue-tsc。

**触发场景**:
- 任何 Vue.js 相关任务
- .vue 文件开发
- Vue Router 配置
- Pinia 状态管理
- Vite + Vue 项目

**核心原则**:
- 状态可预测：单一数据源，派生其他状态
- 数据流明确：Props down, Events up
- 组件小而专注：易于测试、复用和维护
- 避免不必要的重渲染
- 可读性优先

**工作流程**:
1. 确认架构（Vue 3 + Composition API + `<script setup lang="ts">`）
2. 应用 Vue 基础（响应式、SFC 结构、组件数据流、Composables）
3. 按需使用高级特性（Slots、KeepAlive、Teleport、Suspense 等）
4. 行为正确后进行性能优化

---

## 24. vue-debug-guides - Vue3 调试指南

**描述**: Vue 3 运行时错误处理、警告排查、异步失败、SSR/水合问题的调试指南。

**触发场景**:
- 诊断和修复 Vue 问题
- 运行时错误
- 异步问题
- SSR/hydration 问题

**覆盖领域**:
- 响应式系统（ref、reactive、computed、watch）
- 组件问题
- Props & Emits
- 模板和表单
- 生命周期
- Slots
- Provide/Inject
- 异步组件
- KeepAlive
- Transitions
- Teleport
- Suspense
- SSR
- 性能问题

---

## 25. vue-pinia-best-practices - Pinia 状态管理

**描述**: Pinia 状态管理最佳实践，Vue 3 官方推荐的状态管理库。

**核心概念**:
- Store 定义和使用
- State 响应式管理
- Getters 计算属性
- Actions 异步操作
- Store 间通信

---

## 26. vue-router-best-practices - Vue Router 路由

**描述**: Vue Router 4 路由管理最佳实践，包括导航守卫、路由参数、路由组件生命周期交互。

**核心内容**:
- 路由配置
- 动态路由
- 嵌套路由
- 导航守卫
- 路由元信息
- 懒加载

---

## 27. vue-jsx-best-practices - Vue JSX 语法

**描述**: Vue JSX 语法支持，允许在 Vue 中使用 JSX 编写组件。

**核心区别**:
- `class` vs `className`
- JSX 插件配置
- 事件处理
- 条件渲染
- 列表渲染

---

## 28. vue-options-api-best-practices - Options API

**描述**: Vue 3 Options API 风格指南（用于 Vue 2 迁移或遗留项目）。

**核心内容**:
- data() 选项
- methods 方法
- this 上下文
- 生命周期钩子
- 计算属性 vs 方法

---

## 29. vue-testing-best-practices - Vue 测试

**描述**: Vue.js 测试最佳实践，涵盖 Vitest、Vue Test Utils、组件测试、Mocking。

**核心工具**:
- Vitest：Vite 原生测试框架
- Vue Test Utils：组件测试工具
- Playwright：E2E 测试
- Mocking 技巧

---

## 30. create-adaptable-composable - 可适配 Composable

**描述**: 创建库级别的 Vue Composable，接受 MaybeRef / MaybeRefOrGetter 输入类型，支持调用者传入普通值、ref 或 getter。

**核心类型**:
```typescript
// 值或可写 ref
type MaybeRef<T> = T | Ref<T> | ShallowRef<T> | WritableComputedRef<T>;

// MaybeRef + ComputedRef + 函数
type MaybeRefOrGetter<T> = MaybeRef<T> | ComputedRef<T> | (() => T);
```

**使用场景**: 创建可复用的高度灵活的 Composables

---

## 31. uniapp-best-practices - uni-app 跨平台开发

**描述**: uni-app 跨平台应用开发最佳实践。用于 uni-app、小程序、H5、App 开发。默认使用 Vue 3 + Composition API。

**支持平台**:
- H5 (Web)
- 微信小程序
- 支付宝小程序
- App (iOS/Android)
- 鸿蒙 Next

**核心特性**:
- 条件编译：`#ifdef` / `#ifndef`
- 生命周期管理
- 组件规范
- API 统一封装（`uni.` 前缀）
- 路由与页面跳转
- 样式与布局（rpx 单位）

---

## 32. uniapp-responsive-skill - uni-app 宽屏适配

**描述**: 为uni-app应用实现宽屏适配（PC、平板、折叠屏）的完整指南。包含leftWindow/rightWindow/topWindow方案、match-media组件、rpx配置、分栏布局和响应式设计最佳实践。

**触发场景**:
- 适配uni-app应用到宽屏设备
- 创建响应式布局
- 处理分栏显示
- 优化PC端体验
- 平板/折叠屏设备适配

**核心适配方案**:

### 1. 页面窗体级方案：leftWindow/rightWindow/topWindow
- **仅支持Web端**
- 通过扩展主窗口添加额外区域
- `rightWindow`：列表-详情分栏
- `leftWindow`：导航菜单
- `topWindow`：顶部工具栏

### 2. 组件级方案：match-media组件
- 在同一页面内适配不同屏幕宽度
- **支持所有平台**
- 使用`uni.createMediaQueryObserver`监听屏幕变化

### 3. 分栏布局方案（跨平台）
- 使用Vue组件特性实现跨平台分栏
- 通过`uni.getDeviceInfo()`检测设备类型
- 窗口间通过`uni.$emit`/`uni.$on`通信

**断点选择**:
- 手机：< 768px
- 平板：768px - 1024px
- 桌面：>= 1024px
- 宽屏：>= 1280px

**核心思想**: 渐进增强而非完全重写，从手机布局开始逐步添加宽屏优化。

---

## 33. docx - Word 文档处理

**描述**: 创建、读取、编辑和处理 Word 文档 (.docx 文件)。

**触发场景**:
- 创建 Word 文档
- 编辑 .docx 文件
- 添加目录、页眉页脚
- 插入图片
- 查找替换
- 跟踪修订和批注
- 报告、备忘录、信函、模板

**核心工具**:
- docx-js：创建新文档
- pandoc：文本提取
- LibreOffice：格式转换
- XML 直接编辑：高级修改

---

## 34. pdf - PDF 处理

**描述**: PDF 文件处理，包括读取、提取文本/表格、合并、拆分、旋转、水印、创建、表单填充、加密/解密、OCR 等。

**触发场景**:
- 读取 PDF
- 提取文本/表格
- 合并/拆分 PDF
- 添加水印
- 创建 PDF
- PDF 表单
- OCR 扫描件

**核心工具**:
- pypdf：基础操作
- pdfplumber：文本和表格提取
- reportlab：创建 PDF
- pytesseract：OCR

---

## 35. xlsx - Excel 表格处理

**描述**: Excel 文件（.xlsx、.xlsm、.csv、.tsv）的读取、编辑、创建和格式化。

**触发场景**:
- 读取/分析 Excel 数据
- 创建财务模型
- 添加公式和格式化
- 数据清洗
- 表格转换

**核心工具**:
- pandas：数据分析
- openpyxl：公式和格式化

**规范要求**:
- 零公式错误
- 蓝字：硬编码输入
- 黑字：公式和计算
- 绿字：同工作表链接
- 红字：外部文件链接

---

## 36. frontend-design - 前端界面设计

**描述**: 创建独特的、生产级的前端界面，具有高设计质量。用于网页组件、页面、应用、海报等。

**触发场景**:
- 构建网页组件
- 创建落地页
- 仪表盘开发
- React/Vue 组件
- 样式美化

**设计原则**:
- 目的明确：解决什么问题
- 色调选择：极简、极繁、复古、未来感等
- 差异化：令人难忘的独特设计
- 字体选择：避免通用字体
- 颜色主题：CSS 变量
- 动效：动画和微交互
- 空间构成：不对称、重叠、负空间

---

## 37. ffmpeg-video-tools - 视频处理

**描述**: FFmpeg 视频处理工具集。用于视频格式转换、分辨率修改、视频压缩、视频剪辑、音频提取、添加水印等。

**触发场景**:
- 视频转码
- 视频压缩
- 视频剪辑
- 格式转换
- 分辨率调整
- 提取音频
- 添加水印

**常用命令**:
- 格式转换：`ffmpeg -i input.mp4 output.avi`
- 分辨率修改：`ffmpeg -i input -vf "scale=1920:1080" output.mp4`
- 视频压缩：`ffmpeg -i input -c:v libx264 -crf 28 output.mp4`
- 视频剪辑：`ffmpeg -i input -ss 10 -t 30 -c copy output.mp4`
- 提取音频：`ffmpeg -i input -vn -c:a libmp3lame output.mp3`

---

## 38. yt-dlp-downloader - 视频下载

**描述**: 使用 yt-dlp 下载视频，支持 B站、YouTube、Twitter/X、抖音等主流平台。

**触发场景**:
- 下载视频
- 视频下载
- 给定链接下载

**支持平台**: B站、YouTube、Twitter/X、Pornhub、抖音等几乎所有主流视频平台

**常用命令**:
```bash
# 下载单个视频
yt-dlp -f "bestvideo+bestaudio/best" "视频URL"

# 下载并嵌入字幕
yt-dlp --write-auto-subs --sub-lang zh-Hans --embed-subs "视频URL"

# 下载播放列表
yt-dlp -p --playlist-start 1 --playlist-end 10 "播放列表URL"
```

**注意**: 仅用于下载用户有权下载的内容

---

## 39. bilibili-dynamic - B站动态获取

**描述**: 获取 Bilibili 用户动态、关注列表、用户信息等。

**触发场景**:
- 获取用户动态
- 获取用户信息
- 获取关注/粉丝列表
- 获取个人动态流

**核心功能**:
- 获取指定用户动态
- 获取用户详细信息
- 获取关注列表
- 获取粉丝列表

**依赖**: `pip install bilibili-api-python`

---

## 40. skill-creator - 技能创建工具

**描述**: 创建新技能、修改优化现有技能、测量技能性能。用于从零创建技能、编辑优化技能、运行评估测试技能性能。

**触发场景**:
- 从零创建技能
- 编辑或优化现有技能
- 运行评估测试技能
- 优化技能描述以提高触发准确性

**工作流程**:
1. 捕获意图：确定技能目标和触发场景
2. 访谈研究：了解边缘情况、输入输出格式
3. 编写 SKILL.md
4. 编写测试用例
5. 运行评估
6. 迭代改进
7. 描述优化
8. 打包交付

---

## 技能速查表

| 技能名称 | 用途 | 触发关键词 |
|---------|------|----------|
| i-teach-impeccable | 设计上下文建立 | 设计上下文、项目初始化 |
| i-frontend-design | 前端界面设计 | 网页组件、UI、设计 |
| i-critique | 设计评论 | 审查、评论、反馈、评估 |
| i-audit | 技术质量审计 | 审计、无障碍、性能检查 |
| i-optimize | 性能优化 | 性能、加载速度、优化 |
| i-adapt | 跨设备适配 | 响应式、适配、移动端 |
| i-arrange | 布局优化 | 布局、间距、对齐 |
| i-typeset | 排版改进 | 字体、排版、可读性 |
| i-colorize | 色彩添加 | 颜色、色彩、配色 |
| i-bolder | 视觉增强 | 增强、视觉冲击、个性 |
| i-quieter | 视觉柔和 | 柔和、平静、降低强度 |
| i-clarify | 文案优化 | 文案、错误消息、标签 |
| i-onboard | 新手引导 | 引导、首次用户、空状态 |
| i-delight | 愉悦体验 | 愉悦、微交互、个性 |
| i-animate | 动画设计 | 动画、过渡、微交互 |
| i-polish | 最终打磨 | 打磨、收尾、发布前 |
| i-distill | 设计简化 | 简化、减少、清理 |
| i-extract | 组件提取 | 组件、提取、设计系统 |
| i-normalize | 设计系统对齐 | 一致性、token、对齐 |
| i-harden | 健壮性增强 | 健壮、边界、错误处理 |
| i-overdrive | 极致实现 | 极致、突破、非凡 |
| shiji-jiucai-dynamic | 港股价值投资 | 股票估值、高股息、港股、PB |
| vue-best-practices | Vue 3 最佳实践 | Vue、.vue、Vue Router、Pinia |
| vue-debug-guides | Vue 调试 | 调试 Vue、修复 Vue 错误 |
| vue-pinia-best-practices | Pinia 状态管理 | Pinia、Store、状态管理 |
| vue-router-best-practices | Vue Router | Vue Router、路由、导航守卫 |
| vue-jsx-best-practices | Vue JSX | JSX、className |
| vue-options-api-best-practices | Options API | Options API、Vue 2 |
| vue-testing-best-practices | Vue 测试 | 测试、Vitest、Playwright |
| create-adaptable-composable | 可适配 Composable | Composable、MaybeRef |
| uniapp-best-practices | uni-app 开发 | uni-app、小程序、跨平台 |
| uniapp-responsive-skill | uni-app 宽屏适配 | 宽屏适配、PC端、响应式、分栏 |
| docx | Word 文档 | Word、.docx、报告 |
| pdf | PDF 处理 | PDF、.pdf |
| xlsx | Excel 处理 | Excel、.xlsx、表格 |
| frontend-design | 前端设计 | 前端、网页、UI、设计 |
| ffmpeg-video-tools | 视频处理 | FFmpeg、视频转码、视频剪辑 |
| yt-dlp-downloader | 视频下载 | 下载视频、yt-dlp |
| bilibili-dynamic | B站动态 | B站、bilibili、动态 |
| skill-creator | 技能创建 | 创建技能、skill |
