#!/bin/bash

# Pasta de destino
DEST_DIR="$HOME/Pictures/ScreenshotsGames"
mkdir -p "$DEST_DIR"

# Nome do arquivo com timestamp
FILENAME="screenshotgame_$(date +'%Y-%m-%d_%H-%M-%S').png"
FILEPATH="$DEST_DIR/$FILENAME"

# Tirar o print com grim
grim "$FILEPATH"

# Verificar se deu certo
if [[ $? -eq 0 ]]; then
    # Tocar som de câmera
    canberra-gtk-play --id="camera-shutter" --description="Screenshot Taken"

    # Enviar notificação
    notify-send "📸 Screenshot salva!" "$FILEPATH"
else
    notify-send "❌ Erro ao tirar screenshot"
    canberra-gtk-play --id="dialog-error" --description="Erro"
fi
