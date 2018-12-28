#!/bin/bash


# TODO VERSION 가져와서 사용
source ./VERSION

docker build ./nginx-alpine -t rtmp-nginx:alpine
