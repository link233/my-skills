---
name: yt-dlp-downloader
description: |
  使用 yt-dlp 下载视频。当用户给出视频链接（URL），要求下载视频时触发此技能。
  支持 B站、YouTube、Twitter/X、Pornhub、抖音等几乎所有主流视频平台。
  关键词：下载视频、视频下载、download video、yt-dlp、给定链接下载。
  注意：此技能仅用于下载用户有权下载的内容，请勿用于任何侵权用途。
version: 1.0.0
---

# yt-dlp 视频下载技能

## 功能说明

使用 [yt-dlp](https://github.com/yt-dlp/yt-dlp) 开源工具下载视频到当前目录。

## 依赖检查

使用 Bash 工具检查 yt-dlp 是否已安装：

```bash
yt-dlp --version
```

- **已安装**：直接进入下载流程
- **未安装**：提示用户安装 `pip install yt-dlp`

## 下载命令格式

核心命令：

```bash
yt-dlp [OPTIONS] URL
```

### 常用选项

| 选项 | 说明 |
|------|------|
| `-f FORMAT` | 指定视频格式/质量，如 `-f bestvideo+bestaudio/best` |
| `-o FILENAME` | 指定输出文件名模板 |
| `--write-auto-subs` | 下载自动字幕 |
| `--write-subs` | 下载手写字幕 |
| `--sub-lang LANG` | 指定字幕语言，如 `--sub-lang zh-Hans` |
| `-p` | 下载播放列表中的所有视频 |
| `--playlist-start N` | 播放列表起始序号 |
| `--playlist-end N` | 播放列表结束序号 |
| `-q` | 静默模式，减少输出 |
| `--no-progress` | 不显示进度条 |
| `--merge-output-format mkv` | 合并输出格式 |

### 示例命令

**下载单个视频（最佳质量）：**
```bash
yt-dlp -f "bestvideo+bestaudio/best" "视频URL"
```

**下载并指定文件名：**
```bash
yt-dlp -o "%(title)s.%(ext)s" "视频URL"
```

**下载B站视频（常需指定格式）：**
```bash
yt-dlp -f "bestvideo+bestaudio/best" --merge-output-format mkv "B站视频URL"
```

**下载并嵌入中文字幕：**
```bash
yt-dlp --write-auto-subs --sub-lang zh-Hans --embed-subs "视频URL"
```

**下载油管播放列表：**
```bash
yt-dlp -p --playlist-start 1 --playlist-end 10 "播放列表URL"
```

## 执行流程

1. **接收用户输入**：获取视频 URL
2. **检查依赖**：运行 `yt-dlp --version` 确认已安装
3. **执行下载**：使用适当参数运行 yt-dlp 命令
4. **确认结果**：列出下载的文件

## 注意事项

- 视频会下载到 Claude Code 的当前工作目录
- 如果下载失败，检查是否是付费内容、私密视频或地区限制
- 部分平台（如Pornhub）可能需要额外的 cookies 配置
- 建议优先使用 `--merge-output-format mkv` 避免格式兼容问题
