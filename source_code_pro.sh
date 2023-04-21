#!/bin/bash

FONT_NAME="SourceCodePro"
TEMP_DIR="/tmp/${FONT_NAME}"
URL="https://github.com/adobe-fonts/source-code-pro/archive/refs/tags/2.030R-ro/1.050R-it.tar.gz"
ARCHIVE="source-code-pro-2.030R-ro-1.050R-it"

rm -rf ${TEMP_DIR}
mkdir ${TEMP_DIR}
wget ${URL} -O ${TEMP_DIR}/${FONT_NAME}.tar.gz
tar --extract --gzip --file ${TEMP_DIR}/${FONT_NAME}.tar.gz -C ${TEMP_DIR}

sudo rm -rf /usr/share/fonts/truetype/${FONT_NAME}
sudo mkdir /usr/share/fonts/truetype/${FONT_NAME}
sudo cp ${TEMP_DIR}/${ARCHIVE}/TTF/*.ttf /usr/share/fonts/truetype/${FONT_NAME}/

fc-cache -f -v

rm -rf ${TEMP_DIR}
