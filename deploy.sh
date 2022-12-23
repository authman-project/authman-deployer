#!/bin/bash

echo "before run your project create your project image by : docker build -t authman:1 . "
echo "..."

export ENV=production

docker network create nginx

docker-compose --project-directory authman up -d --scale authman=3