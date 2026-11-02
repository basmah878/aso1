#!/bin/bash

# Ejercicio 1: muestra un fichero de configuración sin comentarios ni líneas vacías

if [ $# -eq 0 ]; then
    echo "Uso: $0 fichero_configuracion"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: el fichero $1 no existe"
    exit 1
fi

sed '/^#/d; /^$/d' "$1"