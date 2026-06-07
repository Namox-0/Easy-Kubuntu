#!/bin/bash

# Contraseña de referencia
password_ref="secreto123"

# Contador de intentos
intentos=0
max_intentos=3

# Bucle para pedir contraseña hasta 3 veces
while [ $intentos -lt $max_intentos ]
do
    read -s -p "Introduce la contraseña: " password_usuario
#-p permite escribir y -s oculta lo escrito que dara valor a variable
    echo  # salto de línea
    if [ "$password_usuario" == "$password_ref" ]; then
        echo "Contraseña correcta"
        exit 0
    else
        echo "Vuelve a intentar"
	#No coincide mensaje de error
	intentos=$((intentos + 1))
	#Suma 1 a variable intentos
    fi
#Cierra if
done

# Si llega aquí, superó el número de intentos
echo "Acceso Denegado: Llamar Administrador"
exit 
