FROM alpine

LABEL maintainer="nao_ke@qq.com"

RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g" /etc/apk/repositories \
      && apk add --no-cache openvpn

COPY server /lan-party

WORKDIR /lan-party

RUN chmod +x run.sh

VOLUME ["/lan-party/data"]

EXPOSE 3075/tcp 3074/udp

CMD [ "/lan-party/run.sh" ]