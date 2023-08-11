# UsbEAm-LAN-Party-Server
UsbEAm LAN Party 服务端

介绍/客户端下载：https://www.dogfight360.com/blog/1590/

## 使用

* 安装docker，Ubuntu系统可以使用下面的命令安装

  ```
  sudo apt install docker-compose
  ```

* 启动容器

  ```
  sudo docker run -d -v ./lan-party:/lan-party/data --name=lan-party --cap-add=NET_ADMIN -p 3075:3075/tcp -p 3074:3074/udp --restart=always nouko61/usbeam-lan-party
  ```

* 默认用户名 **username1** 密码 **password1** ，可在 ```psw-file``` 中修改
