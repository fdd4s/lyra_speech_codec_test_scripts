#!/bin/bash
name="${1%.*}"

ffmpeg -i "$1" -vn -ac 1 -ar 16000 "$name"-16k.wav

./encoder_main --input_path="$name"-16k.wav --output_dir=. --bitrate=3200

