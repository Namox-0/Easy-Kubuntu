#!/bin/bash

acci_on=0

clear
echo "Opciones:"

while [ "$acci_on" != "5" ]
do
echo "Opciones"
echo "1 = Ver el nombre del host"
echo "2 = Ver el Sistema Operativo"
echo "3 = Accion 3"
echo "4 = Accion 4"
echo "5 = Salir"

read -p "Selecciona accion: " acci_on
clear

if [ "$acci_on" = "1" ];then
	echo "El nombre del host es:"
	cat /etc/hostname
elif [ "$acci_on" = "2" ]; then
	echo "Este es el Sistema Operativo en uso"
	cat /etc/os-release
elif [ "$acci_on" = "3" ]; then
	echo "Rutina segun A3"
	cat /etc/gtk-2.0/im-multipress.conf
elif [ "$acci_on" = "4" ]; then
	echo "Rutina segun A4"
	cat /proc/partitions
elif [ "$acci_on" = "5" ]; then
	echo "Saliendo..."

else

clear
echo "Error"

fi

read -p "Presiona Enter para continuar: "

done

