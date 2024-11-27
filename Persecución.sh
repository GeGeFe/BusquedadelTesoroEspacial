#!/bin/bash
export contenidocelestia=$1
export so="Linux"

nombres_executables=("celestia" "celestia-qt5" "celestia-qt" "celestia-qt6" "celestia-gtk" "celestia-sdl" "celestia-win")
for nombre in "${nombres_executables[@]}"; do
    # Intenta ejecutar el programa con el nombre actual
    if $nombre -u Persecucion.celx > /dev/null 2>&1; then
        break; # Sale del bucle si logra ejecutar Celestia
    fi
done