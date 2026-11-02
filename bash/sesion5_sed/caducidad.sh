#!/bin/bash

# Ejercicio 4: cambia PASS_MAX_DAYS en la copia de login.defs

if [ $# -eq 0 ]; then
    echo "Uso: $0 numero_de_dias"
    exit 1
fi

dias=$1

# El parámetro debe ser un número de 1 a 3 cifras
if [[ ! $dias =~ ^[0-9]{1,3}$ ]]; then
    echo "Error: $dias no es un número de días válido"
    exit 1
fi

# Valor anterior
antes=$(sed -n '/^PASS_MAX_DAYS/p' login.defs)

# Se modifica el fichero guardando una copia .bak
sed -i.bak "s/^PASS_MAX_DAYS.*/PASS_MAX_DAYS $dias/" login.defs

# Valor nuevo
despues=$(sed -n '/^PASS_MAX_DAYS/p' login.defs)

echo "Antes: $antes"
echo "Después: $despues"