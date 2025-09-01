#!/bin/bash
# Script para iniciar o Eww corretamente

CONFIG_DIR="$HOME/.config/eww"

# Mata instâncias antigas
pkill -f "eww" 2>/dev/null

# Inicia daemon
eww daemon --config "$CONFIG_DIR"

# Garante um tempo para o daemon subir
sleep 1

# Abre a barra lateral
eww open sidebar
