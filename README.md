# UsbEAm-LAN-Party-Server
UsbEAm LAN Party Docker服务端

介绍/客户端下载：https://www.dogfight360.com/blog/1590/

## 使用

* 安装Docker，Ubuntu系统可以使用下面的命令安装

  ```
  sudo apt install -y docker.io
  ```

* 启动容器

  ```
  sudo docker run -d --restart=always \
  --cap-add=NET_ADMIN \
  -v ./lan-party:/lan-party/data \
  -p 3075:3075/tcp -p 3074:3074/udp \
  --name=lan-party \
  nouko61/usbeam-lan-party
  ```

* 默认用户名 **username1** 密码 **password1** ，可在挂载目录中的 ```psw-file``` 里修改
