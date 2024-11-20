#!/bin/bash
export contenidocelestia=$1
export so="Linux"

nombres_executables=("celestia" "celestia-qt5" "celestia-qt")
for nombre in "${nombres_executables[@]}"; do
    # Intenta ejecutar el programa con el nombre actual
    $nombre -u Persecucion.celx > /dev/null 2>&1
done
