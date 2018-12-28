#!/bin/sh

APPNAME=${APPNAME:=APPNAME}

echo '----------------------'
echo $(cat $TWITCH_ENDPOINT)
echo "$TWITCH_CODE"

if [ -z "$TWITCH_ENDPOINT" ]
then
  echo 'TWITCH_ENDPOINT is essential'
  exit 0
fi

if [ -z "$YOUTUBE_ENDPOINT" ]
then
  echo 'YOUTUBE_ENDPOINT is essential'
  exit 0
fi


# TODO sed rtmp.conf
sed -i "s/{{APPNAME}}/$APPNAME/" /etc/nginx/module.d/10-rtmp.conf

sed -i "s/{{TWITCH_ENDPOINT}}/$TWITCH_ENDPOINT/" /etc/nginx/module.d/10-rtmp.conf
sed -i "s/{{TWITCH_CODE}}/$TWITCH_CODE/" /etc/nginx/module.d/10-rtmp.conf
sed -i "s/{{YOUTUBE_ENDPOINT}}/$YOUTUBE_ENDPOINT/" /etc/nginx/module.d/10-rtmp.conf
sed -i "s/{{YOUTUBE_CODE}}/$YOUTUBE_CODE/" /etc/nginx/module.d/10-rtmp.conf

echo "$@"
exec "$@"
