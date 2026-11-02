#!/bin/bash

# Ejercicio 3: genera una copia del registro con las IP sustituidas por X.X.X.X

if [ $# -eq 0 ]; then
    echo "Uso: $0 fichero_registro"
    exit 1
fi

if [ ! -f "$1" ]; then
    echo "Error: el fichero $1 no existe"
    exit 1
fi

sed -E 's/([0-9]{1,3}\.){3}[0-9]{1,3}/X.X.X.X/g' "$1" > "$1.anonimo"

echo "Fichero anonimizado: $1.anonimo"