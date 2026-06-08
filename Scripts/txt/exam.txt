#!/bin/bash

clear
contra=0
#Le damos un valor a contra para iniciar bucle

while [ $contra != 123 ]
#Le indico que active el bucle hasta que contra sea el valor correcto
do
clear

read -p "Introduzca codiga acceso: " contra
#La opcion -p para poder cambiarle el valor a contra hasta que coincida

done
#done para el cierre del bucle

clear
echo "Codigo correcto"

while true
#Abro bucle indefinido
do
echo ""
echo "DANIEL"
echo "" 
echo "Menu de opciones:"
echo "1 - Configuracion de Firewall UFW."
echo "2 - Reglas activas del firewall."
echo "3 - Eventos relevantes de seguridad."
echo "4 - Intentos de Login."
echo "5 - Salir."

read -p "Selecciona opcion: " op
#Doy la opcion de escribir el valor de op con -p
#if y elif para valores concretos de op
if [ $op = 1 ]
	then clear && cat /etc/ufw/ufw.conf

elif [ $op = 2 ]
        then clear && cat /etc/ufw/user.rules

elif [ $op = 3 ]
        then clear && cat /var/log/syslog

elif [ $op = 4 ]
        then clear && cat /var/log/auth.log
#cat para mostrar comandos del sistema

elif [ $op = 5 ]
        then clear && echo "Adios amigos"
	exit 0 
#exit 0 para que cierre el escipt en valor 5 de op

else
#else para el resto de casos no concretados

clear
echo "Error"
echo "Opcion incorrecta"

fi
#fi para cerrar las opciones if
done
