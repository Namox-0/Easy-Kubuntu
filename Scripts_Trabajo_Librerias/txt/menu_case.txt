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

case $op in
#Elije una opcion en funcion del valor de la variable
1)
#El valor que quiera que coincida se pone con ) delante
	echo "Ejecutando opcion 1" & sleep 1
	#introduce texto y tiempo de espera, nº=segundos
;;
#La opcion siempre se debe cerrar con ;;
2)
        echo "Ejecutando opcion 2" & sleep 1
;;
3)
        echo "Ejecutando opcion 3"
        read -p "Pulse enter para continuar: "
	#Deja al usuario decidir cuando continuar al pulsar enter
;;
4)
        echo "Ejecutando opcion 4"
	read -p "Pulse enter para continuar: "
;;
5)
	echo "saliendo..." & sleep 1
	exit 0 #Da orden de terminar el script
;;
*)
#La opcion de *) es para todos los demas valores
echo "Error opcion inexistente..."
sleep 1
;;
esac
#Cierra menu case off, esac es case al reves
done
#Indica hasta donde llega el bucle y que cuando llegue repita el bucle
