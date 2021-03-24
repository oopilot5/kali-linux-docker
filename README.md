docker pull kalilinux/kali-linux-docker:latest

docker build -t kalidemo .
docker run --name kali -d --privileged -v `pwd`:/home/test -p 122:22 kalidemo


docker exec -it kali bash

service postgresql start
