#!/bin/bash

con=0
clear

while [ $con != 123 ]
do
read -s -p "Contraseña: " con
echo "contraseña incorrecta"

done
clear
echo "contraseña correcta presentando menu:"
read -p "selecciona opcion: " op

case $op in
	1)
	echo "121"
	;;
	2)
	echo "222"
	;;
	3)
	echo "33"
	;;
	*)
	;;
esac
