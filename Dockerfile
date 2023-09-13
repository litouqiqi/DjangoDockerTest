# 建立 python3.7 环境
 FROM python:3.7
 
 # 镜像作者大江狗
 MAINTAINER DJG
 
 # 设置 python 环境变量
 ENV PYTHONUNBUFFERED 1
 
 # 设置pip源为国内源
#  COPY pip.conf /root/.pip/pip.conf
 
 # 在容器内/var/www/html/下创建 myDockerTest文件夹
 RUN mkdir -p /var/www/html/myDockerTest
 
 # 设置容器内工作目录
 WORKDIR /var/www/html/myDockerTest
 
 # 将当前目录文件加入到容器工作目录中（. 表示当前宿主机目录）
 ADD . /var/www/html/myDockerTest
 
 # 利用 pip 安装依赖
 RUN pip install -r requirements.txt