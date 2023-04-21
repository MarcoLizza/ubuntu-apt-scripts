#!/bin/bash
wget -O - https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmour -o /usr/share/keyrings/google-chrome-archive-keyring.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/google-chrome-archive-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list > /dev/null
