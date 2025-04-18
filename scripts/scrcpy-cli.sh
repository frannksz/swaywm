#!/bin/bash

# Lista de IPs usados anteriormente
known_ips=(
    "192.168.0.247:5555"
    "Digitar manualmente"
)

# Menu de IPs com wofi
selected_ip=$(printf "%s\n" "${known_ips[@]}" | wofi --dmenu --prompt "Escolha o IP do S23")

# Entrada manual se necessário
if [[ "$selected_ip" == "Digitar manualmente" ]]; then
    selected_ip=$(wofi --dmenu --prompt "Digite o IP e porta do dispositivo (ex: 192.168.0.XXX:5555)")
fi

# Se cancelar
if [[ -z "$selected_ip" ]]; then
    notify-send "scrcpy" "Operação cancelada."
    exit 1
fi

# Menu de ação
action=$(printf "Espelhar com tela desligada\nSair" | wofi --dmenu --prompt "Ação para $selected_ip")

if [[ "$action" == "Espelhar com tela desligada" ]]; then
    notify-send "scrcpy" "Conectando a $selected_ip..."

    # Executa scrcpy e captura stdout + stderr
    output=$(scrcpy -s "$selected_ip" --turn-screen-off 2>&1)
    status=$?

    if [[ $status -eq 0 ]]; then
        notify-send "scrcpy" "Conexão encerrada com sucesso."
    else
        # Mostra erro real
        notify-send -u critical "scrcpy - ERRO" "Falha ao conectar em $selected_ip:\n$output"
    fi

elif [[ "$action" == "Sair" ]]; then
    notify-send "scrcpy" "Cancelado pelo usuário."
    exit 0
fi

