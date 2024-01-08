@echo off
for %%a in (*.mkv) do (
    ffmpeg -i "%%a" -map 0 -c:v copy -c:a ac3 "%%~na_converted.mkv"
)
echo Conversion complete.
pause