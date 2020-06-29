# Dockerfile for automatic transcoding webm to mp4

The main goal of this Dockerfile is to automatically transcode webm video placed in the `input` directory to mp4 format in the `output` directory.

## Quick setup

`docker run --name transcoder -d -v <path to input>:/input -v <path to output>:/output erikdevries/transcoder`

## Build Docker container

`docker build -t transcoder .`

`docker run --name transcoder -v <path to input>:/input -v <path to output>:/output transcoder`