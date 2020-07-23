#! /bin/bash
mkdir -p $HOME/DockerBuild
touch $HOME/DockerBuild/Dockerfile
touch $HOME/DockerBuild/requirements.txt
:> $HOME/DockerBuild/Dockerfile
:> $HOME/DockerBuild/requirements.txt

echo "FROM ubuntu:16.04"  >> $HOME/DockerBuild/Dockerfile
echo "LABEL maintainer=\"@Rangapv\"" >> $HOME/DockerBuild/Dockerfile
echo "RUN apt-get update && apt-get install -y vim" >> $HOME/DockerBuild/Dockerfile
echo "RUN apt-get install -y nginx" >> $HOME/DockerBuild/Dockerfile
echo "RUN apt-get install -y curl" >> $HOME/DockerBuild/Dockerfile
echo "EXPOSE 80" >> $HOME/DockerBuild/Dockerfile
echo "CMD nginx -g 'daemon off;'" >> $HOME/DockerBuild/Dockerfile

eval "cd $HOME/DockerBuild/"

 
eval "docker build -t nginx-pvr1 ."
