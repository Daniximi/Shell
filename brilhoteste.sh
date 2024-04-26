#!/usr/bin/env bash

# Script para mudar o brilho da tela neste PC
# Feito em Shell Script forma simples para alterar o brilho da tela
# Necessita de usar o X11 e utiliza o comando xrandr
# Trocar o nome do monitor para o que esta usando

# Criado  por Danilo Moreira
# 25/04/2024
#-------------------------------------------------------
#!/bin/bash

while true; do
    echo "Qual o valor do brilho?"
    read brilho

    if (( $(echo "$brilho <= 0 || $brilho >= 1" | bc -l) )); then
        echo "Valor não suportado."
    else
        xrandr --output LVDS-1 --brightness $brilho
        echo "O brilho da tela foi alterado"
        break  # Sair do loop se um valor válido foi fornecido
    fi
done
