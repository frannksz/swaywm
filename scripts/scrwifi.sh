#!/bin/bash

# Último IP conhecido do celular (pode alterar ou expandir isso depois)
DEFAULT_IP="192.168.0.247:5555"

# Conecta via ADB no IP conhecido
adb connect "$DEFAULT_IP" > /dev/null

# Espera um pouquinho pra garantir que conecte
sleep 1

# Lista dispositivos conectados via ADB
devices=$(adb devices | grep -w "device" | awk '{print $1}')
count=$(echo "$devices" | wc -l)

# Nenhum dispositivo
if [[ $count -eq 0 ]]; then
    notify-send -u critical "scrcpy - ERRO" "Nenhum dispositivo ADB encontrado (USB ou Wi-Fi)."
    exit 1
fi

# Um único dispositivo: conecta direto
if [[ $count -eq 1 ]]; then
    device=$(echo "$devices")
    notify-send "scrcpy" "Conectando a $device..."
    output=$(scrcpy -s "$device" --turn-screen-off 2>&1)
    status=$?

    if [[ $status -eq 0 ]]; then
        notify-send "scrcpy" "Conexão encerrada com sucesso."
    else
        notify-send -u critical "scrcpy - ERRO" "Erro ao conectar em $device:\n$output"
    fi

# Vários dispositivos: mostra menu com wofi
else
    device=$(echo "$devices" | wofi --dmenu --prompt "Selecione o dispositivo ADB")

    if [[ -z "$device" ]]; then
        notify-send "scrcpy" "Operação cancelada."
        exit 1
    fi

    notify-send "scrcpy" "Conectando a $device..."
    output=$(scrcpy -s "$device" --turn-screen-off 2>&1)
    status=$?

    if [[ $status -eq 0 ]]; then
        notify-send "scrcpy" "Conexão encerrada com sucesso."
    else
        notify-send -u critical "scrcpy - ERRO" "Erro ao conectar em $device:\n$output"
    fi
fi

