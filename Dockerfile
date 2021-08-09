FROM alpine
MAINTAINER Nounk61 <nao_ke@qq.com>

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories \
      && apk add --no-cache openvpn

RUN mkdir -p /lan-party/data

VOLUME ["/lan-party/data"]

COPY server/* /lan-party/

EXPOSE 3075/tcp 3074/udp

ENTRYPOINT /lan-party/run.sh
