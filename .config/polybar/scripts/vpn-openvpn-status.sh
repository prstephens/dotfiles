#!/bin/sh

result=$(pgrep -a openvpn$)

if  [ "$result" != "" ]; 
then     
    echo $(curl -s ipinfo.io/ | jq -r ".city") " - " $(curl -s ipinfo.io/ | jq -r ".ip");
else     
    echo "VPN DOWN";
fi