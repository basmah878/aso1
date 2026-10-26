#!/bin/bash
# validar_ip.sh - Comprueba si un parámetro tiene formato de IPv4
 
if [ $# -eq 0 ]; then
    echo "Uso: $0 <dirección_ip>"
    exit 1
fi
 
ip=$1
re='^[0-9]{1,3}(\.[0-9]{1,3}){3}$'
 
if [[ $ip =~ $re ]]; then
    echo "$ip tiene formato de IP"
else
    echo "$ip no tiene formato de IP"
fi