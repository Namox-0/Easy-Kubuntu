#!/bin/bash

while true
#while sirve para crear bucles con true crea uno infinito
#do espara ordenar lo que hara dentro de ese bucle
do
#limpiamos e introducimos menu con echo
clear
echo "##################################################"
echo "#        Menu para añadir/eliminar usuarios      #"
echo "##################################################"
echo "1) Añadir Usuario"
echo "2) Eliminar Usuario"
echo "3) Salir del menu"
read -p "Introduzca el numero de la opcion: " op
#damos valor a una variable

case $op in
#case tomara el valor de la variable para la opcion del menu
1)
#Las opciones se ponen con el valor que queremos y un )
	echo "Modo añadir..."
	read -p "Nombre de usuario: " us_n
#Definimos la variable por la que funcionara la opcion
	if grep -w "$us_n" /etc/passwd
#buscara el valor de la variable
	then 
#Si lo encuentra dira que ya existe y no lo creara
		echo "Error..."
		echo "Usuario ya Existente"
#Si no lo encuentra lo creara al no existir ya un usuario
	else 
		echo "Creando Usuario ($us_n)..." & sleep 1
#Poner un & sirve para poner mas comandos en la misma linea
#sleep sirve para poner tiempos de espera el nº son los segundos
		useradd $us_n
#Crea usuarios pero sin carpetas home
		echo "Usuario ($us_n) creado exitosamente" & sleep 1
	fi
#Cierra el if
	read -p "Pulsa enter para continuar: "
#Sirve para permitir al usuario decidir cuando continuar
;;
#Para cerrar las opciones usamos doble ; y asi poder pasar a la siguiente
2) 
#Funciona de manera similar solo que si lo encuentra lo elimina y si no dara mensaje de error
        echo "Modo Eliminar..."
        read -p "Nombre de usuario: " us_n2
        if grep -w "$us_n2" /etc/passwd
        then    
		echo "Eliminar usuario ($us_n2)..." & sleep 1
		userdel $us_n2	
#Sirve para borrar usuarios
		echo "Usuario ($us_n2) eliminado exitosamente"
        else
		echo "Error..."
                echo "Usuario no Existente"   
	fi
        read -p "Pulsa enter para continuar: "
;;

3)
	echo "Saliendo..."
	exit 0
#Hace que el el usuario salga del script
;;

*)
#La opcion * sirve para todo lo demas que no hayamos definido
	echo "Error..."
	echo "Opcion inexistente"
#Mensaje de error por opcion no valida
        read -p "Pulsa enter para continuar: "
;;
esac
#escar que es case al reves sirve para cerrar el menu
done
#Sirve para cerrar el bucle while y que cuando la ejecucion llegue aqui vuelva al do para el bucle
