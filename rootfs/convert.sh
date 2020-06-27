#!/bin/bash

echo Running

input=$1
output="/output/$(basename $input).mp4"
processed="/input/processed/$(basename $input)"

echo Converting $input to $output
ffmpeg -i "$input" "$output"

echo Moved $input to $processed
mv "$input" "$processed"
