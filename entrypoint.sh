#!/bin/sh

mkdir /input/processed

inotifywait -m -e create -e moved_to -e modify --format '%f' /input | while read FILE
do
    echo "New file detected: $FILE"
    ffmpeg -i "/input/$FILE" "/output/$FILE.mp4";
    mv "/input/$FILE" /input/processed
done
