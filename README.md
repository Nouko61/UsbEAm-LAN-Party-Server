# UsbEAm-LAN-Party-Server
UsbEAm LAN Party 服务端

客户端介绍/下载：https://www.dogfight360.com/blog/1590/

## 用法

* 创建数据卷

  ```
  docker volume create lan-party-data
  ```

* 启动容器

  ```
  docker run -d \
  -v lan-party-data:/lan-party/data \
  --name=lan-party \
  --cap-add=NET_ADMIN \
  -p 3075:3075/tcp \
  -p 3074:3074/udp \
  --restart=always \
  nouko61/usbeam-lan-party
  ```
* 默认用户名 ```username1``` 密码 ```password1``` 可在数据卷里修改
