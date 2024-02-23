@echo off

echo FFMPEG LIVE STREAM TOOLS
set /p videoFile=NAMA VIDIO (example: video.mp4) ? 
set /p rtmpkey=RTMP+KEY FULL ? 
ffmpeg -re -stream_loop -1 -i "%videoFile%" -r 60 -b:v 1500k -c:v libx264 -preset veryfast -c:a aac -f flv "%rtmpkey%"
pause