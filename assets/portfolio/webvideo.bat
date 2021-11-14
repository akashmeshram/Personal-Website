ffmpeg -i %1.mp4 -c:v libvpx -crf 10 -b:v 1M -c:a libvorbis temp.webm
ffmpeg -i temp.webm -c copy -an %1.webm
del %1.mp4
del temp.webm
ren %1.webm %1.mp4