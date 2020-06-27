# Dockerfile for automatic transcoding video from input to output directory

[![Build Status](https://travis-ci.org/edv/docker-transcoder.svg?branch=master)](https://travis-ci.org/edv/docker-transcoder)

The main goal of this Dockerfile is to automatically transcode video placed in the `input` directory to a given format in the `output` directory.

This could be used to e.g. transcode videos to H.265 without manual intervention. 

## Quick setup

`docker run --name transcoder -d -v <path to input>:/input -v <path to output>:/output -v /etc/localtime:/etc/localtime:ro erikdevries/transcoder`

## Build Docker container

`docker build -t transcoder .`


docker run --name transcoder -d -v <path to input>:/input -v <path to output>:/output -v /etc/localtime:/etc/localtime:ro transcoder