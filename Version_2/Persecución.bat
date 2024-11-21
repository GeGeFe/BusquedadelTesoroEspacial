@echo off
REM Para poder reproducir sonidos instalar ffmpeg desde https://github.com/BtbN/FFmpeg-Builds/releases
REM Instalarlo siguiendo el tutorial: https://es.wikihow.com/instalar-FFmpeg-en-Windows
set contenidocelestia=%~1
set so="Windows"
c:
cd \
cd "Program Files (x86)
cd Celestia
celestia.exe -u "%~dp0Persecucion.celx"
exit
