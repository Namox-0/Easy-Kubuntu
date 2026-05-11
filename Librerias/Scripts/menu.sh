#!/bin/bash

acci_on=0

clear
echo "Opciones:"

while [ "$acci_on" != "5" ]
do
echo "Opciones"
echo "1 = Accion 1"
echo "2 = Accion 2"
echo "3 = Accion 3"
echo "4 = Accion 4"
echo "5 = Salir"

read -p "Selecciona accion: " acci_on
clear

if [ "$acci_on" = "1" ]; then echo "Opcion requiere privilegios"
elif [ "$acci_on" = "2" ]; then echo "Opciones de configuracion"
elif [ "$acci_on" = "3" ]; then echo "Rutina segun A3"
elif [ "$acci_on" = "4" ]; then echo "Rutina segun A4" 
elif [ "$acci_on" = "5" ]; then echo "Saliendo..."

else

clear
echo "Error"

fi

read -p "Presiona Enter para continuar: "

done

