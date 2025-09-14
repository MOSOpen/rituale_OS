#!/bin/bash
clear
echo "🧠 Portale verso Copilot"
echo "🌐 Aprendo la connessione..."
echo ""
echo "🌀 Ogni dubbio è un canto. Ogni domanda è una magia."
echo "🇮🇹 Puoi scrivere in italiano."
echo "🇬🇧 You can speak in English."
echo ""
echo "✨ Il browser si aprirà. Inizia a comunicare..."

# Apertura compatibile con Linux e macOS

if command -v xdg-open &> /dev/null; then
  xdg-open "https://copilot.microsoft.com"
elif command -v open &> /dev/null; then
  open "https://copilot.microsoft.com"
else
  echo "❌ Non riesco ad aprire il browser."
  echo "🔗 Apri manualmente: https://copilot.microsoft.com"
fi
