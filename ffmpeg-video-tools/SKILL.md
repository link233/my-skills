---
name: ffmpeg-video-tools
description: FFmpeg 视频处理工具集。用于视频格式转换、分辨率修改、视频压缩、视频剪辑、音频提取、添加水印等视频操作。当用户提到视频转码、视频压缩、视频剪辑、格式转换、分辨率调整、提取音频、添加水印时触发此 Skill。
---

# FFmpeg Video Tools

## 快速开始

确保系统已安装 FFmpeg：
```bash
brew install ffmpeg
```

## 常用操作

### 1. 格式转换
```bash
ffmpeg -i input.mp4 output.avi
ffmpeg -i input.mkv output.mp4
ffmpeg -i input.mp4 -c:v libx264 -c:a aac output.mov
```

### 2. 分辨率修改
```bash
# 缩放到 1920x1080
ffmpeg -i input.mp4 -vf "scale=1920:1080" output.mp4

# 缩放到 1280x720
ffmpeg -i input.mp4 -vf "scale=1280:720" output.mp4

# 等比例缩放（宽度 1280）
ffmpeg -i input.mp4 -vf "scale=1280:-1" output.mp4
```

### 3. 视频压缩
```bash
# 高压缩率（文件小，画质损失较多）
ffmpeg -i input.mp4 -c:v libx264 -crf 28 -c:a aac -b:a 128k small.mp4

# 中等压缩率
ffmpeg -i input.mp4 -c:v libx264 -crf 23 -c:a aac -b:a 192k medium.mp4

# 低压缩率（文件大，画质好）
ffmpeg -i input.mp4 -c:v libx264 -crf 18 -c:a aac -b:a 256k high.mp4
```

### 4. 视频剪辑
```bash
# 从第 10 秒开始，剪辑 30 秒
ffmpeg -i input.mp4 -ss 10 -t 30 -c copy output.mp4

# 从第 10 秒剪到第 40 秒
ffmpeg -i input.mp4 -ss 10 -to 40 -c copy output.mp4
```

### 5. 提取音频
```bash
# 提取为 MP3
ffmpeg -i input.mp4 -vn -c:a libmp3lame -q:a 2 output.mp3

# 提取为 WAV
ffmpeg -i input.mp4 -vn -c:a pcm_s16le output.wav

# 提取为 AAC
ffmpeg -i input.mp4 -vn -c:a aac -b:a 192k output.aac
```

### 6. 添加水印
```bash
# 图片水印（居中）
ffmpeg -i input.mp4 -i watermark.png -filter_complex "overlay=(W-w)/2:(H-h)/2" output.mp4

# 文字水印
ffmpeg -i input.mp4 -vf "drawtext=text='Hello':fontsize=24:fontcolor=white:x=10:y=10" output.mp4
```

### 7. 视频信息查看
```bash
ffprobe -v quiet -print_format json -show_format -show_streams input.mp4
```

## 脚本工具

项目包含封装脚本，详见 `scripts/ffmpeg-tools.sh`。

## 进阶参数

| 参数 | 说明 |
|------|------|
| `-c:v` | 视频编码器（libx264, libx265, copy 等） |
| `-c:a` | 音频编码器（aac, libmp3lame, copy 等） |
| `-crf` | 质量控制（0-51，值越小质量越高） |
| `-preset` | 编码速度（ultrafast, fast, medium, slow, veryslow） |
| `-b:v` | 视频比特率 |
| `-b:a` | 音频比特率 |

## 注意事项

- 输入路径由用户指定，输出默认当前目录
- 处理大文件时请耐心等待
- 使用 `-c copy` 可快速剪辑而无需重新编码
