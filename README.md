# UsbEAm-LAN-Party-Server
UsbEAm LAN Party 服务端

客户端介绍/下载：https://www.dogfight360.com/blog/1590/

## 使用docker-compose启动

* 首先安装docker环境，以ubuntu 20.04为例，使用下面命令一键安装

  ```
  sudo apt install docker-compose
  ```

* 克隆代码

  ```
  git clone https://github.com/Nouko61/UsbEAm-LAN-Party-Server
  ```

* 启动容器

  ```
  cd UsbEAm-LAN-Party-Server
  sudo docker-compose up -d
  ```

* 默认用户名 **username1** 密码 **password1** ，可在 ```data/psw-file``` 中修改
