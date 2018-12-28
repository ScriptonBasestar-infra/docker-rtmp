# docker-rtmp

twitch, youtube ... streaming

## 설정

Port 1935

서버 env 추가는 준비중
`docker run --rm -e TWITCH_ENDPOINT=xxxx -e TWITCH_CODE=xxxx -e YOUTUBE_ENDPOINT=xxxx -e YOUTUBE_CODE=xxxx sb-rtmp-nginx:alpine`

overwrite /etc/nginx/module.d/10-rtmp.conf
`docker run --rm -v $(pwd)/10-rtmp.conf:/etc/nginx/module.d/10-rtmp.conf sb-rtmp-nginx:alpine`

## 참고

https://github.com/arut/nginx-rtmp-module

https://stream.twitch.tv/ingests/
https://support.google.com/youtube/answer/2474026?hl=en
