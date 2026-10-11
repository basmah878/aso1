#!/bin/bash

pedir_puerto_valido() {
    while true; do
        read -p "Puerto: " puerto
        if [[ $puerto =~ ^[0-9]+$ ]]; then
            break
        fi
    done
}

pedir_puerto_valido
