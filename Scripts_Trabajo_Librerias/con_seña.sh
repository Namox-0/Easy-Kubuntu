#!/bin/bash

# Contraseña de referencia
password_ref="secreto123"

# Bucle infinito
while true
do
    read -s -p "Introduce la contraseña: " password_usuario
    echo  # salto de línea
    if [ "$password_usuario" == "$password_ref" ]; then
        echo "Contraseña correcta"
        exit 0
	#Termina el script
    else
        echo "Vuelve a intentar"
	#No coincide mensaje de error
    fi
#Cierra fi
done
#Indica hasta donde llega el bucle y que cuando llegue repita el bucle
