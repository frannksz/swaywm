#!/bin/bash

# Franklin Souza
# @franksz

# Definir diretório de destino para as capturas
DEST_DIR="$HOME/Pictures/Games"

# Verificar se o diretório existe, se não, cria
if [ ! -d "$DEST_DIR" ]; then
    mkdir -p "$DEST_DIR"
fi

# Formatar nome do arquivo: ScreenGame + data + hora
FILENAME="ScreenGame_$(date +'%Y-%m-%d_%H-%M-%S').png"

# Caminho completo do arquivo
FILEPATH="$DEST_DIR/$FILENAME"

# Capturar a tela usando grimblast e salvar no caminho especificado
grimblast save screen "$FILEPATH"

# Exibir notificação com Dunst incluindo a thumbnail
dunstify -i "$FILEPATH" "Screenshot Game" "Sua captura de tela foi feita com sucesso, salva em $FILEPATH" -u normal -t 3000

# Saída do script
exit 0

