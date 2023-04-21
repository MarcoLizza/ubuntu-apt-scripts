#!/bin/bash
wget -O - https://inkscape.org/~ArloJamesBarnes/gpg/ | sudo gpg --dearmour -o /usr/share/keyrings/inkscape_dev-archive-keyring.gpg > /dev/null
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/inkscape_dev-archive-keyring.gpg] https://ppa.launchpadcontent.net/inkscape.dev/stable/ubuntu/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/inkscape_dev.list > /dev/null
