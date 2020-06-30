#!/bin/bash

echo Running....

inputFullPath=$1
echo $inputFullPath

inputOriginal=$(basename "$inputFullPath")
echo $inputOriginal

inputWithoutExtension=$(basename "$inputFullPath" .webm)
echo $inputWithoutExtension

output="/output/$inputWithoutExtension.mp4"
processed="/input/processed/$inputOriginal"
unprocessable="/input/unprocessable/$inputOriginal"

if [ -f "$output" ]; then
    echo "$output already exists, skipping conversion!"
    mv "$inputFullPath" "$unprocessable"
else
    echo Converting $inputFullPath to $output
    #ffmpeg -i "$inputFullPath" "$output"
    ffmpeg -hide_banner -loglevel panic -i "$inputFullPath" "$output"

    echo Moved $inputFullPath to $processed
    mv "$inputFullPath" "$processed"
fi