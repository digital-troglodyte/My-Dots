#!/usr/bin/ env bash

for i in *.mkv; do ffmpeg -i "$i" -c copy "${i%.*}.mp4"; done

echo 'conversion complete '