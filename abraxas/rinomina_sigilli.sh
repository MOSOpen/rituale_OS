#!/bin/bash
clear
echo "🔁 Rinomino i sigilli sonori..."

count=1
for file in *.wav *.mp3; do
  ext="${file##*.}"
  mv "$file" "${count}.${ext}"
  echo "→ $file → ${count}.${ext}"
  ((count++))
done

echo "✅ Rinomina completata."
