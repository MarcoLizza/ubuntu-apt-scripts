#!/bin/bash
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/oracle-virtualbox-archive-keyring.gpg] https://download.virtualbox.org/virtualbox/debian $(lsb_release --codename --short) contrib" | sudo tee /etc/apt/sources.list.d/oracle-virtualbox.list > /dev/null
