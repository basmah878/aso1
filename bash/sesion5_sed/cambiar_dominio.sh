#!/bin/bash

# Ejercicio 2: cambia @gmail.com y @hotmail.com por @alu.edu.gva.es

if [ $# -eq 0 ]; then
    echo "Uso: $0 fichero_correos"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: el fichero $1 no existe"
    exit 1
fi

sed -E 's/@(gmail|hotmail)\.com$/@alu.edu.gva.es/' "$1"