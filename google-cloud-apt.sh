#!/bin/bash
wget -O - https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmour -o /usr/share/keyrings/google-cloud-archive-keyring.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/google-cloud-archive-keyring.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee /etc/apt/sources.list.d/google-cloud.list > /dev/null
