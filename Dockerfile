FROM alpine

RUN apk --update add socat

EXPOSE 2375/tcp

CMD socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
