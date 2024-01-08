@echo off
for %%a in (*.mkv) do (
    ffmpeg -i "%%a" -map 0 -c copy -c:a ac3 "%%~na_converted.mkv"
)
echo Conversion complete.
pause
