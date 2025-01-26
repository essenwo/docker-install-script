#!/bin/bash

# 更新并安装依赖
sudo apt update && sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# 添加 Docker 官方 GPG 密钥
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# 添加 Docker 官方仓库
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# 更新 APT 包索引
sudo apt update

# 安装 Docker
sudo apt install -y docker-ce

# 验证 Docker 是否安装成功
sudo docker --version

# 启动 Docker 服务
sudo systemctl start docker
sudo systemctl enable docker
