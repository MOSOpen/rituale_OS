#!/bin/bash
clear
echo "🌌 Benvenuto nel tempio sonoro ABRAXAS"
echo "📜 Ogni file è un canto. Ogni comando è una magia."
echo ""

# Rileva sistema operativo
OS=$(uname)
echo "🖥️ Sistema rilevato: $OS"

# Funzione per installare strumenti (solo se sudo è disponibile)
install_tool() {
  TOOL=$1
  if ! command -v "$TOOL" &> /dev/null; then
    echo "🔧 $TOOL non trovato."
    if command -v sudo &> /dev/null; then
      echo "🔄 Provo a installarlo..."
      if [[ "$OS" == "Darwin" ]]; then
        if command -v brew &> /dev/null; then
          brew install "$TOOL"
        else
          echo "⚠️ Homebrew non trovato. Installalo da https://brew.sh"
        fi
      elif [[ "$OS" == "Linux" ]]; then
        sudo apt update && sudo apt install -y "$TOOL"
      else
        echo "❌ Sistema non supportato per installazione automatica."
      fi
    else
      echo "⚠️ Non posso installare $TOOL: sudo non disponibile."
    fi
  else
    echo "✅ $TOOL già installato."
  fi
}

# Installa strumenti necessari
install_tool mpv
install_tool cmus
install_tool nano

echo ""
echo "📁 Cartella rituale: $(pwd)"
echo ""
echo "🎶 Vuoi ascoltare i canti?"
echo "→ Digita: ./abraxas_audio.sh"
echo "→ Oppure: ./avvia_cmus.sh"
echo ""
echo "📜 Vuoi leggere il manifesto?"
echo "→ Digita: nano manifesto.md"
echo ""
echo "🌱 Ogni glitch è una lezione. Ogni bambino è un creatore."
sleep 2
clear

echo "🌌 Benvenuto nel menu rituale di UNdersound"
echo ""
echo "🌀 Ogni script è una stanza. Ogni file è un canto."
echo "🌱 Ogni glitch è una lezione. Ogni bambino è un creatore."
echo ""
echo "Scegli cosa aprire:"
echo ""
echo "1. 🎧 Ascolta i canti → ./abraxas_audio.sh"
echo "2. 🎛️ Avvia CMUS (opzionale) → ./avvia_cmus.sh"
echo "3. 📜 Leggi il manifesto → nano manifesto.md"
echo "4. 🧠 Parla con Copilot → ./parla_con_copilot.sh"
echo ""
echo "🔗 Link esterni del collettivo UNdersound:"
echo "5. 📺 YouTube → playlist rituale"
echo "6. ☕ Ko-fi → sostieni il progetto"
echo "7. 🐙 GitHub → codice e README"
echo ""
read -p "Digita il numero della scelta: " scelta

case $scelta in
  1) ./abraxas_audio.sh ;;
  2) ./avvia_cmus.sh ;;
  3) nano manifesto.md ;;
  4) ./parla_con_copilot.sh ;;
  5) xdg-open "https://youtube.com/playlist?list=PLtDS5fBgpXRLysPMlP-TmX1osTiiaqZFJ&si=dLT9uhqVLkBrn0p4" 2>/dev/null || open "https://youtube.com/playlist?list=PLtDS5fBgpXRLysPMlP-TmX1osTiiaqZFJ&si=dLT9uhqVLkBrn0p4" ;;
  6) xdg-open "https://ko-fi.com/collettivoundersound" 2>/dev/null || open "https://ko-fi.com/collettivoundersound" ;;
  7) xdg-open "https://github.com/MOSOpen" 2>/dev/null || open "https://github.com/MOSOpen" ;;
  *) echo "❌ Scelta non valida. Riprova." ;;
esac
