#!/bin/bash

# for file in images/*.{jpg,png}; do
#     [ ! -f "thumbnails/$file" ] && convert "$file" -resize 160x160 "thumbnails/$file"
# done

for f in images/*; do
  echo "Resizing $f"
  [ -f "$f" ] || continue
  base=$(basename "$f")
  convert -resize 160x160 "$f" "thumbnails/${base%.*}.${base##*.}"
done