FROM debian:stable-slim

RUN apt-get update
RUN apt-get install socat -y

EXPOSE 2375/tcp

CMD socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
