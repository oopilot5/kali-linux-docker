docker pull kalilinux/kali-linux-docker:latest

docker build -t kalidemo .
docker run --name kali -d --privileged -v `pwd`:/home/test -p 122:22 kalidemo


docker exec -it kali bash

service postgresql start

"""
打包 kalidemo.tar 16.8G, 在NAS上构建
加载后 17.7G
"""