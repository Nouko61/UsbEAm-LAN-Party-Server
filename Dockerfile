FROM alpine:3.18

LABEL maintainer="nao_ke@qq.com"

RUN apk add --no-cache openvpn=2.6.5-r0 --repository=http://dl-cdn.alpinelinux.org/alpine/v3.18/main

COPY linux /lan-party

WORKDIR /lan-party

RUN chmod +x run.sh

VOLUME ["/lan-party/data"]

EXPOSE 3075/tcp 3074/udp

CMD [ "/lan-party/run.sh" ]