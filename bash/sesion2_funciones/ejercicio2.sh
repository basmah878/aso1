#!/bin/bash


clasificar_http() {


    if [[ $codigo -ge 200 & $codigo -le 299 ]]; then
        echo "Éxito"
    elif [[ ... ]]; then
        echo "Redirección"
    elif [[ ... ]]; then
        echo "Error del cliente"
    elif [[ ... ]]; then
        echo "Error del servidor"
    fi
}

# Pruebas
clasificar_http 200
clasificar_http 301
clasificar_http 404
clasificar_http 500
