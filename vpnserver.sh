#!/bin/bash
htbip=$(ip addr | grep tun0 | grep inet | grep 10. | tr -s " " | cut -d " " -f 3 | cut -d "/" -f 1)
myip=$(cat ~/Documents/htb/*.ovpn | grep "remote " | cut -d " " -f 2 | cut -d "." -f 1 | cut -d "-" -f 2-)

if [[ $htbip == *"10."* ]]
then
   echo "$myip"
else
   echo ""
fi
