#!/bin/bash
if [ "$#" -lt 1 ];
then
    function list_of_keys {
echo try --all to display the IP addresses and symbolic names of all hosts
echo or try --target to display a list of open system TCP ports
}
list_of_keys
    exit 1
fi
if [ "$1" = "--all" ];
then
    function addresses_names {
    echo $(arp -a | cut -d ' ' -f 1-2) | sed -e 's/)/)\n/g'
}
addresses_names
elif [ "$1" = "--target" ];
then
    echo pls input IP address to scan
read IP
    function open_ports {
    echo $(nc -z -v $IP 1-65535 2>&1 | grep succeeded) | sed -e 's/!/\n/g'
}
open_ports
else
    echo "Incorrect input, pls try again"
fi
