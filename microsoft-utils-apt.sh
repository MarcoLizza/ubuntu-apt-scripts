#!/bin/bash
wget -O - https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmour -o /usr/share/keyrings/microsoft-archive-keyring.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/ubuntu/22.04/prod jammy main" | sudo tee /etc/apt/sources.list.d/microsoft-archive.list > /dev/null
