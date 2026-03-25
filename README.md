# Claude Code Skills 技能文档

本文档介绍本项目安装的所有 Skill 的作用和使用场景。

---

## 目录

1. [shiji-jiucai-dynamic](#1-shiji-jiucai-dynamic-史诗级韭菜投资方法论) - 港股价值投资
2. [vue-best-practices](#2-vue-best-practices-vue3-最佳实践) - Vue 3 最佳实践
3. [vue-debug-guides](#3-vue-debug-guides-vue3-调试指南) - Vue 3 调试与排错
4. [vue-pinia-best-practices](#4-vue-pinia-best-practices-pinia-状态管理) - Pinia 状态管理
5. [vue-router-best-practices](#5-vue-router-best-practices-vue-router-路由) - Vue Router 路由
6. [vue-jsx-best-practices](#6-vue-jsx-best-practices-vue-jsx-语法) - Vue JSX 语法
7. [vue-options-api-best-practices](#7-vue-options-api-best-practices-options-api) - Options API
8. [vue-testing-best-practices](#8-vue-testing-best-practices-vue-测试) - Vue 测试
9. [create-adaptable-composable](#9-create-adaptable-composable-可适配-composable) - 可适配 Composable
10. [uniapp-best-practices](#10-uniapp-best-practices-uni-app-跨平台开发) - uni-app 跨平台开发
11. [docx](#11-docx-word-文档处理) - Word 文档处理
12. [pdf](#12-pdf-pdf-处理) - PDF 处理
13. [xlsx](#13-xlsx-excel-表格处理) - Excel 表格处理
14. [frontend-design](#14-frontend-design-前端界面设计) - 前端界面设计
15. [ffmpeg-video-tools](#15-ffmpeg-video-tools-视频处理) - FFmpeg 视频处理
16. [yt-dlp-downloader](#16-yt-dlp-downloader-视频下载) - 视频下载
17. [bilibili-dynamic](#17-bilibili-dynamic-b站动态获取) - B站动态获取
18. [skill-creator](#18-skill-creator-技能创建工具) - 技能创建工具

---

## 1. shiji-jiucai-dynamic - 史诗级韭菜投资方法论

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

## 2. vue-best-practices - Vue3 最佳实践

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

## 3. vue-debug-guides - Vue3 调试指南

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

## 4. vue-pinia-best-practices - Pinia 状态管理

**描述**: Pinia 状态管理最佳实践，Vue 3 官方推荐的状态管理库。

**核心概念**:
- Store 定义和使用
- State 响应式管理
- Getters 计算属性
- Actions 异步操作
- Store 间通信

---

## 5. vue-router-best-practices - Vue Router 路由

**描述**: Vue Router 4 路由管理最佳实践，包括导航守卫、路由参数、路由组件生命周期交互。

**核心内容**:
- 路由配置
- 动态路由
- 嵌套路由
- 导航守卫
- 路由元信息
- 懒加载

---

## 6. vue-jsx-best-practices - Vue JSX 语法

**描述**: Vue JSX 语法支持，允许在 Vue 中使用 JSX 编写组件。

**核心区别**:
- `class` vs `className`
- JSX 插件配置
- 事件处理
- 条件渲染
- 列表渲染

---

## 7. vue-options-api-best-practices - Options API

**描述**: Vue 3 Options API 风格指南（用于 Vue 2 迁移或遗留项目）。

**核心内容**:
- data() 选项
- methods 方法
- this 上下文
- 生命周期钩子
- 计算属性 vs 方法

---

## 8. vue-testing-best-practices - Vue 测试

**描述**: Vue.js 测试最佳实践，涵盖 Vitest、Vue Test Utils、组件测试、Mocking。

**核心工具**:
- Vitest：Vite 原生测试框架
- Vue Test Utils：组件测试工具
- Playwright：E2E 测试
- Mocking 技巧

---

## 9. create-adaptable-composable - 可适配 Composable

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

## 10. uniapp-best-practices - uni-app 跨平台开发

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

## 11. docx - Word 文档处理

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

## 12. pdf - PDF 处理

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

## 13. xlsx - Excel 表格处理

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

## 14. frontend-design - 前端界面设计

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

## 15. ffmpeg-video-tools - 视频处理

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

## 16. yt-dlp-downloader - 视频下载

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

## 17. bilibili-dynamic - B站动态获取

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

## 18. skill-creator - 技能创建工具

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
| docx | Word 文档 | Word、.docx、报告 |
| pdf | PDF 处理 | PDF、.pdf |
| xlsx | Excel 处理 | Excel、.xlsx、表格 |
| frontend-design | 前端设计 | 前端、网页、UI、设计 |
| ffmpeg-video-tools | 视频处理 | FFmpeg、视频转码、视频剪辑 |
| yt-dlp-downloader | 视频下载 | 下载视频、yt-dlp |
| bilibili-dynamic | B站动态 | B站、bilibili、动态 |
| skill-creator | 技能创建 | 创建技能、skill |
