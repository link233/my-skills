# FFmpeg 详细命令参考

## 视频编码器

| 编码器 | 说明 |
|--------|------|
| libx264 | H.264 编码，兼容性最好 |
| libx265 | H.265/HEVC 编码，更高压缩率 |
| copy | 不重新编码，直接复制 |

## 音频编码器

| 编码器 | 说明 |
|--------|------|
| aac | AAC 编码，兼容性最好 |
| libmp3lame | MP3 编码 |
| copy | 不重新编码 |

## CRF 值参考

| CRF | 质量 |
|-----|------|
| 18 | 接近无损 |
| 23 | 中等（默认） |
| 28 | 较高压缩 |

## 常见格式转换

```bash
# MP4 -> MOV
ffmpeg -i input.mp4 -c:v libx264 -c:a aac output.mov

# MKV -> MP4
ffmpeg -i input.mkv -c:v libx264 -c:a aac output.mp4
```

## 分辨率预设

```bash
# 4K -> 1080p
ffmpeg -i input.mp4 -vf "scale=1920:1080" output.mp4

# 1080p -> 720p
ffmpeg -i input.mp4 -vf "scale=1280:720" output.mp4
```

## 高级技巧

### 旋转视频
```bash
ffmpeg -i input.mp4 -vf "transpose=1" output.mp4  # 顺时针90度
```

### 调整播放速度
```bash
ffmpeg -i input.mp4 -filter:v "setpts=0.5*PTS" -filter:a "atempo=2" output.mp4  # 加速2倍
```

### 视频转 GIF
```bash
ffmpeg -i input.mp4 -vf "fps=15,scale=320:-1" output.gif
```

### 截取缩略图
```bash
ffmpeg -i input.mp4 -ss 00:00:05 -vframes 1 thumbnail.jpg
```
