#!/bin/bash
NAME=docker
KEY_URL=https://download.docker.com/linux/ubuntu/gpg
APT_URL=https://download.docker.com/linux/ubuntu
VERSION=$(lsb_release -cs)
CHANNEL=stable

wget -O- ${KEY_URL} | gpg --dearmor | sudo tee /usr/share/keyrings/${NAME}-archive-keyring.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/${NAME}-archive-keyring.gpg] ${APT_URL} ${VERSION} ${CHANNEL}" | sudo tee /etc/apt/sources.list.d/${NAME}.list > /dev/null
