FROM alpine

# add stupid workaround for stupid bug https://github.com/alpinelinux/docker-alpine/issues/98
RUN sed -i 's/https/http/' /etc/apk/repositories
RUN apk --update add socat

EXPOSE 2375

CMD socat TCP-LISTEN:2375,reuseaddr,fork UNIX-CLIENT:/var/run/docker.sock
