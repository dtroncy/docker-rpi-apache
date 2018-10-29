# docker-rpi-apache

<img src="https://badgen.net/badge/platform/raspberry%20pi?list=1"/> <a href="https://hub.docker.com/r/dtroncy/rpi-apache"><img src="https://badgen.net/badge//docker?icon=docker"/></a> <a href="https://travis-ci.org/dtroncy/docker-rpi-apache"><img src="https://badgen.net/travis/babel/babel?icon=travis&label=build"/></a>

This is a raspberry pi compatible Apache DockerFile.

To build it :

    docker build --build-arg apache_version=$apache_version -t dtroncy/rpi-apache .

$apache_version is version of apache you want to build.

To run it (with image on docker hub) :

    docker run -ti --name apache dtroncy/rpi-apache

Description of parameters :
  - **-t** : Allocate a pseudo-tty
  - **-i** : Keep STDIN open even if not attached
  - **--name apache** : Container's name
  - **dtroncy/rpi-apache** : Image's name