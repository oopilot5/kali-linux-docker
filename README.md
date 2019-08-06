docker pull kalilinux/kali-linux-docker:latest

docker build -t kalidemo .
docker run --name kali -d --privileged -v `pwd`:/home/test -p 122:22 kalidemo


docker exec -it kali bash
vi /root/.bashrc 去掉注释

service postgresql start
service --status-all
