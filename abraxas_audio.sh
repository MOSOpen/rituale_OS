#!/bin/bash
clear
echo "🎧 Portale sonoro ABRAXAS"
echo "File disponibili:"
ls abraxas/*.wav abraxas/*.mp3
echo ""
read -p "Scegli il numero del file (es. 1.wav): " file
echo "🔊 Ora ascoltiamo: $file"
mpv "abraxas/$file"
