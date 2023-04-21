#!/bin/bash
wget -O - https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmour -o /usr/share/keyrings/microsoft-vscode-archive-keyring.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/microsoft-vscode-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/microsoft-vscode.list > /dev/null
