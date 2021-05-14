FROM debian:stable-slim

# add stupid workaround for stupid bug https://github.com/alpinelinux/docker-alpine/issues/98
RUN apt-get update
RUN apt-get install socat -y

EXPOSE 2375/tcp

CMD socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
