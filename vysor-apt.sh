#!/bin/bash
echo "deb [arch=$(dpkg --print-architecture), trusted=yes] https://nuts.vysor.io/apt ./" | sudo tee /etc/apt/sources.list.d/vysor.list > /dev/null
