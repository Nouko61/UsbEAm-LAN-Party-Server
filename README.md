# UsbEAm-LAN-Party-Server
UsbEAm LAN Party Docker服务端

Docker Hub地址：https://hub.docker.com/r/nouko61/usbeam-lan-party

介绍/客户端下载：https://www.dogfight360.com/blog/1590/

## 使用

默认用户名 **username1** 密码 **password1** ，可在数据目录中的 ```psw-file``` 里修改

### 方式一：使用Docker启动

* 安装Docker，Ubuntu系统可以使用下面的命令安装

  ```
  sudo apt update && sudo apt install -y docker.io
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

### 方式二：使用Docker Compose

* 安装Docker Compose，Ubuntu系统可以使用下面的命令安装

  ```
  sudo apt update && sudo apt install -y docker-compose wget
  ```

* 获取compose文件

  ```
  wget https://gitee.com/nouko61/UsbEAm-LAN-Party-Server/raw/master/docker-compose.yml
  ```

* 启动

  ```
  sudo docker-compose up -d
  ```

### 方式三：直接启动

* 安装依赖，Ubuntu系统可以使用下面的命令安装

  ```
  sudo apt update && sudo apt install -y openvpn git
  ```

* 克隆项目

  ```
  git clone https://gitee.com/nouko61/UsbEAm-LAN-Party-Server.git
  ```

* 启动（后台运行）

  ```
  cd UsbEAm-LAN-Party-Server/server
  sudo nohup sh run.sh &
  ```
