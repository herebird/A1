#!/bin/bash
# Created by https://www.hostingtermurah.net
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
if [ ! -e /usr/bin/curl ]; then
    apt-get -y update && apt-get -y upgrade
	apt-get -y install wget curl
fi
clear
CEK=`curl -s http://api.vps-murah.net/api/checker.php?mode=trial`;
if [ "$CEK" != "MEMBER" ]; then
		echo -e "${red}Permission Denied!${NC}";
        echo $CEK;
        exit 0;
else
echo -e "${green}Permission Accepted...${NC}"
sleep 1
clear
fi
wget http://script.hostingtermurah.net/autoscript/kvm/debian/debian8-kvm.sh -O - -o /dev/null|sh