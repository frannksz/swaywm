#!/bin/bash
game=$(printf "Steam\nLutris\nPCSX2\nMinecraft\n" | wofi --dmenu --prompt "🎮 Jogo:")

case "$game" in
  Steam) steam ;;
  Lutris) lutris ;;
  PCSX2) pcsx2 ;;
  Minecraft) prismlauncher ;;
esac
