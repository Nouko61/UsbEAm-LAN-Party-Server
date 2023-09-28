# UsbEAm-LAN-Party-Server
UsbEAm LAN Party 服务端

[Docker Hub](https://hub.docker.com/r/nouko61/usbeam-lan-party)

介绍/客户端下载：https://www.dogfight360.com/blog/1590/

默认用户名 **username1** 密码 **password1** ，可在 ```psw-file``` 文件里修改

## Windows

1. 下载发行版（Releases）里最新的 **windows.zip**

2. 运行 **OpenVPN-2.6.6-I001-amd64**，安装 openvpn

3. 运行 ```启动UDP服务.bat```

> 默认只能同时运行一个服务，推荐使用UDP服务。如果要同时运行TCP服务与UDP服务，需要在开始菜单中添加虚拟网卡

## Linux

### 方式一：直接启动

1. 安装 openvpn 与 git，Ubuntu系统可以使用下面的命令安装

  ```
  sudo apt update && sudo apt install -y openvpn git
  ```

2. 克隆项目

  ```
  git clone https://gitee.com/nouko61/UsbEAm-LAN-Party-Server.git
  ```

3. 启动（后台运行）

  ```
  cd UsbEAm-LAN-Party-Server/linux
  sudo nohup sh run.sh &
  ```

### 方式二：使用Docker启动

1. 安装Docker，Ubuntu系统可以使用下面的命令安装

  ```
  sudo apt update && sudo apt install -y docker.io
  ```

2. 启动容器

  ```
  sudo docker run -d --restart=always \
  --cap-add=NET_ADMIN \
  -v ./lan-party:/lan-party/data \
  -p 3075:3075/tcp -p 3074:3074/udp \
  --name=lan-party \
  nouko61/usbeam-lan-party
  ```

### 方式三：使用Docker Compose

1. 安装Docker Compose，Ubuntu系统可以使用下面的命令安装

  ```
  sudo apt update && sudo apt install -y docker-compose wget
  ```

2. 获取compose文件

  ```
  wget https://gitee.com/nouko61/UsbEAm-LAN-Party-Server/raw/master/docker-compose.yml
  ```

3. 启动

  ```
  sudo docker-compose up -d
  ```
