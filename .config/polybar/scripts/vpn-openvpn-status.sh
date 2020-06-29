#!/bin/sh

result=$(pgrep -a openvpn$)

if  [ "$result" != "" ]; 
then     
    echo "ﴣ  $(curl -s ipinfo.io/ | jq -r ".city")";
else     
    echo "  VPN DOWN";
fi