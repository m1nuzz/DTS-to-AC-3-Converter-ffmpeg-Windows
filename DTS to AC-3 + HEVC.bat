@echo off

setlocal

rem Получаем путь к директории, где находится этот BAT файл
set SCRIPT_DIR=%~dp0scripts\

rem Указываем путь к HandBrakeCLI и к файлу пресета
set HANDBRAKE_CLI=%SCRIPT_DIR%HandBrakeCLI.exe
set PRESET_FILE=%SCRIPT_DIR%1080p.json

rem Проходимся по всем MKV и MP4 файлам в текущей директории
for %%a in (*.mkv, *.mp4) do (
    echo Converting: "%%a"
    rem Здесь мы вызываем HandBrakeCLI с необходимыми параметрами
    "%HANDBRAKE_CLI%" --preset-import-file "%PRESET_FILE%" --preset "1080p" -i "%%a" -o "%%~na_converted.mkv"
    echo Done: "%%~na_converted.mkv"
)

echo Conversion complete.
pause
