#!/bin/bash
# FFmpeg 视频工具脚本集

# 检查 FFmpeg 是否安装
check_ffmpeg() {
    if ! command -v ffmpeg &> /dev/null; then
        echo "错误: FFmpeg 未安装"
        echo "请运行: brew install ffmpeg"
        exit 1
    fi
}

# 显示视频信息
info() {
    if [ -z "$1" ]; then
        echo "用法: $0 info <视频文件>"
        exit 1
    fi
    ffprobe -v quiet -print_format json -show_format -show_streams "$1"
}

# 格式转换
convert() {
    if [ -z "$1" ] || [ -z "$2" ]; then
        echo "用法: $0 convert <输入文件> <输出文件>"
        exit 1
    fi
    ffmpeg -i "$1" -y "$2"
}

# 分辨率修改
resize() {
    if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
        echo "用法: $0 resize <输入文件> <宽度> <高度> <输出文件>"
        exit 1
    fi
    ffmpeg -i "$1" -vf "scale=$2:$3" -c:a copy "$4"
}

# 视频压缩
compress() {
    local quality=${2:-23}
    local output=${3:-"compressed_$1"}
    ffmpeg -i "$1" -c:v libx264 -crf "$quality" -c:a aac -b:a 192k -movflags +faststart -y "$output"
}

# 视频剪辑
clip() {
    if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
        echo "用法: $0 clip <输入文件> <开始时间(秒)> <时长(秒)> <输出文件>"
        exit 1
    fi
    ffmpeg -i "$1" -ss "$2" -t "$3" -c copy -y "$4"
}

# 提取音频
extract_audio() {
    local format=${3:-mp3}
    case "$format" in
        mp3)
            ffmpeg -i "$1" -vn -c:a libmp3lame -q:a 2 -y "$2"
            ;;
        wav)
            ffmpeg -i "$1" -vn -c:a pcm_s16le -y "$2"
            ;;
        aac)
            ffmpeg -i "$1" -vn -c:a aac -b:a 192k -y "$2"
            ;;
    esac
}

# 添加图片水印
watermark_image() {
    local pos=${4:-center}
    case "$pos" in
        topleft) overlay="overlay=10:10" ;;
        topright) overlay="overlay=W-w-10:10" ;;
        bottomleft) overlay="overlay=10:H-h-10" ;;
        bottomright) overlay="overlay=W-w-10:H-h-10" ;;
        center|*) overlay="overlay=(W-w)/2:(H-h)/2" ;;
    esac
    ffmpeg -i "$1" -i "$2" -filter_complex "$overlay" -c:a copy -y "$3"
}

# 主命令处理
case "$1" in
    info) check_ffmpeg; info "$2" ;;
    convert) check_ffmpeg; convert "$2" "$3" ;;
    resize) check_ffmpeg; resize "$2" "$3" "$4" "$5" ;;
    compress) check_ffmpeg; compress "$2" "$3" "$4" ;;
    clip) check_ffmpeg; clip "$2" "$3" "$4" "$5" ;;
    extract) check_ffmpeg; extract_audio "$2" "$3" "$4" ;;
    watermark) check_ffmpeg; watermark_image "$2" "$3" "$4" "$5" ;;
    *)
        echo "FFmpeg Video Tools"
        echo "用法: $0 <命令> [参数]"
        echo "命令: info, convert, resize, compress, clip, extract, watermark"
        ;;
esac
