FROM alpine:edge
RUN apk add --update 3proxy --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing  && rm -rf /var/cache/apk/*
ADD 3proxy.cfg /etc/3proxy/3proxy.cfg
EXPOSE 1080 3128
CMD ["/usr/bin/3proxy","/etc/3proxy/3proxy.cfg"]
