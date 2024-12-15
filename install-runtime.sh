#!/bin/bash

## Fast track to bash 
VERSION=${VERSION:-"2.1.9-rc"}
APP_URL=https://github.com/ceculajakub/pp4/releases/download/${VERSION}/eCommerceMvc
DEST_DIR=/opt/ecommerce
USERNAME=ecommerce
## install .net
dnf install -y -q dotnet-sdk-8.0.x86_64

## user & dir
adduser ${USERNAME}
mkdir -p ${DEST_DIR}
curl -L -o ${DEST_DIR}/ecommerce ${APP_URL}
chown ${USERNAME}:${USERNAME} -R ${DEST_DIR} 
cd ${DEST_DIR}
chmod +x ecommerce
./ecommerce

# ## Templating systemd service
# systemd_service_template="""
# [Unit]
# Description=Ecommerce Service
# After=network-online.target

# [Service]
# Type=simple
# User=${USERNAME}
# ExecStart= ${DEST_DIR}/ecommerce
# Restart=always

# [Install]
# WantedBy=multi-user.target
# """
# echo "$systemd_service_template" > /etc/systemd/system/ecommerce.service
# systemctl daemon-reload

# ## Add to autostart
# systemctl enable ecommerce
# systemctl start ecommerce
# ## start || configure as system service

