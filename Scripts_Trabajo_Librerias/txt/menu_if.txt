#!/bin/bash

while true
#bucle infinito
do
#Da orden de que hacer en el bucle

clear
#Limpia terminal
echo "1) opcion 1"
echo "2) opcion 2"
echo "3) opcion 3"
echo "4) opcion 4"
echo "5) salir"
#Introduce texto entrecomillado
read -p "Introduzca opcion: " op
#Da el valor que ponga el usuario a la variable
if [ $op = 1 ]
#Si la variable es igual dara orden de que hacer 
	then echo "Ejecutando opcion 1" & sleep 1
	#introduce texto y tiempo de espera, nº=segundos

elif [ $op = 2 ]
#elif para mas condiciones limitantes
        then echo "Ejecutando opcion 2" & sleep 1

elif [ $op = 3 ]
        then echo "Ejecutando opcion 3"
        read -p "Pulse enter para continuar: "
	#Deja al usuario decidir cuando continuar al pulsar enter
elif [ $op = 4 ]
        then echo "Ejecutando opcion 4"
	read -p "Pulse enter para continuar: "

elif [ $op = 5 ]
        then echo "saliendo..." & sleep 1
	exit 0
#Da orden de terminar el script

else
#Para todos los demas valores
echo "Error opcion inexistente..."
sleep 1
fi
#Cierra el if
done
#Indica hasta donde llega el bucle y que cuando llegue repita el bucle
