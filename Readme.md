docker build -t video_streaming .

docker run -it -v ${PWD}/video:/home/app/video video_streaming
$ docker cp ${PWD}/video/. 325836eac5ce:/home/app/video/

ffmpeg -i input.mp4 -codec:v libx264 -codec:a aac -hls_time 10 -hls_playlist_type vod -hls_segment_filename "output/segment%03d.ts" -start_number 0 ${hlsPath}
