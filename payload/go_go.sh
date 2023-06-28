#!/usr/bin/env bash
#clear

trap "echo oh;exit" SIGTERM SIGINT
ffmpeg -re\
      -i  https://pull-f5-gcp01.tiktokcdn.com/stage/stream-3283807712798310572_or4.flv \
      -pix_fmt yuvj420p\
      -x264-params keyint=48:min-keyint=48:scenecut=-1\
      -b:v 4500k\
      -b:a 128k\
      -ar 44100\
      -acodec aac\
      -vcodec libx264\
      -preset medium\
      -crf 28\
      -threads 4\
      -f flv\
      rtmp://a.rtmp.youtube.com/live2/ms9z-mx5s-fvjg-9tmf-93ap

