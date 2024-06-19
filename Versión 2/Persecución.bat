@echo off
REM Para poder reproducir sonidos instalar ffmpeg desde https://github.com/BtbN/FFmpeg-Builds/releases
REM Instalarlo siguiendo el este tutorial: https://es.wikihow.com/instalar-FFmpeg-en-Windows
set contenidocelestia=%~1
c:
cd \
cd "Program Files (x86)
cd Celestia
celestia.exe -u "%~dp0Persecucion.celx"
exit