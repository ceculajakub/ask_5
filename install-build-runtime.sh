## Fast track to bash 
NAME=${NAME:-"World"}
NAME=$(whoami)
APP_URL=https://github.com/ceculajakub/pp4/releases/download/2.1.8-rc/eCommerceMvc
VERSION=develop
DEST_DIR=/opt/ecommerce
USERNAME=ecommerce

echo "Hello ${NAME}"

## install .net
dnf install -y -q dotnet-sdk-8.0.x86_64

## user & dir
adduser ${USERNAME}
mkdir -p ${DEST_DIR}

## start || configure as system service
cd ${DEST_DIR}
./eCommerceMvc
