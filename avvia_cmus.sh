#!/bin/bash
clear
echo "🎶 Benvenuta nel tempio del suono!"
echo "🔍 Controllo se il lettore rituale CMUS è installato..."

if ! command -v cmus &> /dev/null; then
  echo "⚠️ CMUS non è installato. Procedo con l'installazione..."
  sudo apt update
  sudo apt install -y cmus
else
  echo "✅ CMUS è già installato. Il portale può aprirsi."
fi

echo ""
echo "🌌 Avvio CMUS. Usa le frecce per navigare, invio per ascoltare."
echo "📁 Ricorda: puoi aggiungere i tuoi file audio con il comando :add"
echo ""
cmus
