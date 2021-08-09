#!/bin/sh
mkdir -p /dev/net

if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi

cd /lan-party

if [ ! -f data/psw-file ]; then
    echo "username1 password1" > data/psw-file
fi

nohup openvpn server_tcp.conf > data/openvpn-tcp.log &
openvpn server_udp.conf > data/openvpn-udp.log
