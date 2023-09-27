FROM alpine

LABEL maintainer="nao_ke@qq.com"

RUN apk add --no-cache openvpn=2.4.11-r0 --repository=http://dl-cdn.alpinelinux.org/alpine/v3.11/main

COPY server /lan-party

WORKDIR /lan-party

RUN chmod +x run.sh

VOLUME ["/lan-party/data"]

EXPOSE 3075/tcp 3074/udp

CMD [ "/lan-party/run.sh" ]