#!/bin/bash

clear 
#Limpia la terminal 
dat=$(date)
echo "#####################################################"
echo "#                                                   #"
echo "#            Gestion Basica de Usuarios             #"
echo "#                                                   #"
echo "#                                                   #"
echo "# Daniel Lombardero Nuñez                           #"
echo "# $dat                     #"
echo "# Examen 3ªEVA                                      #"
echo "#####################################################"
echo "#*******************************************        #"
echo "#**   O   P E Q U E N O   G I L B E R T   **        #"
echo "#*******************************************        #"
echo "#**                                       **        #"
echo "#**                 .-\"\"\"\"-.              **        #"
echo "#**               .'  .--.  '.            **        #"
echo "#**              /   /    \   \\           **        #"
echo "#**             |   | 0  0 |   |          **        #"
echo "#**             |   |  __  |   |          **        #"
echo "#**              \\   \\____/   /           **        #"
echo "#**               '._.___._.'             **        #"
echo "#**                  /| |\\                **        #"
echo "#**                 /_| |_\\               **        #"
echo "#**                   / \\                 **        #"
echo "#**                  /___\\                **        #"
echo "#*******************************************        #"
echo "#####################################################"
#Introduce texto
sleep 5
#Tiempo de espera para seguir ejecutando
clear

d_o=$(ls /home/pan/Documentos | grep -c "Contraseña.txt")
#Asigna Nº a la variable dependiendo de si existe (1) o no (0) el archivo
if [ $d_o = 0 ]
	#Si no existe lo crea
	then echo "Archivo faltante, creando..."
		echo "123456" > /home/pan/Documentos/Contraseña.txt & sleep 3
		#Crea archivo con texto 
		echo "Archivo creado" & sleep 2
#si ya existe solo lo confirma
else	echo "Archivo existente prosiguiendo..." & sleep 2
fi
clear

con_ac=$(cat /home/pan/Documentos/Contraseña.txt)
#asigna a la variable el valor del contenido del archivo
read -s -p "Introduce Contraseña para entrar: " con
#Asigna el valor que introduzca el usuario a la variable 
if [ $con = $con_ac ]
#Si coinciden inicia menu
then
while true
#crea un bucle infinito
do
clear
echo "#############################################################"
echo "#        Gestion Basica de Usuarios by Pequeno Gilbert         #"
echo "#############################################################"
echo "1) Añadir Usuario"
echo "2) Eliminar Usuario"
echo "3) Mostrar Usuarios con Home"
echo "4) Mostrar todos los usuarios"
echo "5) Añadir grupo"
echo "6) Eliminar grupo"
echo "7) Mostrar grupos del sistema"
echo "8) Añadir usuario a grupo"
echo "9) Eliminar usuario del grupo"
echo "10) Cambiar contraseña de Admin"
echo "11) Salir"
read -p "Selecciona opcion: " op
clear

case $op in
#opcion de menu en funcion de variable
1) 
	echo "Modo añadir Usuario..."
	read -p "Nombre de usuario: " us_n
	if grep -q -w "$us_n" /etc/passwd
	#Comprueba si existe el usuario en funcion del nombre
	then 
	#Si existe no lo puede volver a crear
		echo "Error..."
		echo "Usuario ya Existente"
	else 
	#si no existe lo crea
		echo "Creando Usuario ($us_n)..." & sleep 1
		useradd $us_n
		#Crea usuarios sin carpetas
		echo "Usuario ($us_n) creado exitosamente" & sleep 1
	fi
	read -p "Pulsa enter para continuar: "
	#Espera confirmacion para continuar
;;
2) 
        echo "Modo Eliminar Usuario..."
        read -p "Nombre de usuario: " us_n2
        if grep -q -w "$us_n2" /etc/passwd
        then    
        #Si existe lo elimina
		echo "Eliminar usuario ($us_n2)..." & sleep 1
		userdel $us_n2	
		#Elimina completamente el usuario
		echo "Usuario ($us_n2) eliminado exitosamente"
        else
        #Si no existe mensaje de error
		echo "Error..."
                echo "Usuario no Existente"   
	fi
        read -p "Pulsa enter para continuar: "
;;
3)
	echo "Usuarios que tienen una carpte Home"
   	ls -l /home
   	#Muestra por pantalla el contenido del directorio
	read -p "Pulsa enter para continuar: "
;;
4)
	echo "Todos los Usuarios del sistema"
	cat /etc/passwd
	#muestra por pantalla el contenido del archivo
	read -p "Pulsar enter para continuar: "
;;
5)
	echo "Modo añadir grupo..."
	read -p "Nombre del Grupo: " gr_n
        if grep -q -w "$gr_n" /etc/group
        #Comprueba si existe
        then 
        #Si ya existe mensaje de error
                echo "Error..."
                echo "Grupo ya Existente"
        else 
        #Si no existe lo crea
                echo "Creando Grupo ($gr_n)..." & sleep 1
                groupadd $gr_n
                #crea el grupo
                echo "Grupo ($gr_n) creado exitosamente" & sleep 1
        fi
        read -p "Pulsa enter para continuar: "
;;	
6)
	echo "Modo Eliminar Grupo..."
	read -p "Nombre del Grupo: " gr_n2
        if grep -q -w "$gr_n2" /etc/group 
        then 
        #Si existe lo elimina
		echo "Eliminando Grupo ($gr_n2)..." & sleep 1
                groupdel $gr_n2
                #elimina el grupo
                echo "Grupo ($gr_n2) eliminado exitosamente" & sleep 1
	else 
	#Si no existe mensaje de error
		echo "Error..."
                echo "Grupo no Existente"
        fi
        read -p "Pulsa enter para continuar: "
;;
7)
	echo "Mostrando todos los grupos del sistema"
	cat /etc/group
	#Muestra el contenido del archivo de grupos
	read -p "Pulsa enter para continuar: "
;;
8)
	echo "Modo añadir Usuario a Grupo..."
	read -p "Nombre de Usuario a añadir: " us_n3
	read -p "Nombre del Grupo: " gr_n3
	if grep -q -w "$us_n3" /etc/passwd && grep -q -w "$gr_n3" /etc/group
	#Comprueba si existe el usuario y el grupo
	then       
	 if grep "$gr_n4" /etc/group | grep -q -w "$us_n4"
	 #Prosigue y comprueba si el usuario ya esta en el grupo
		then
		#Si el usuario ya esta en el grupo mensaje de error
		echo "Error..."
		echo "Usuario ($us_n3) ya se encuentra en el Grupo ($gr_n3)"
		else
		#Si no esta lo añade al grupo
		echo "Añadiendo Usuario ($us_n3) al grupo ($gr_n3)..."
		usermod -aG $gr_n3 $us_n3
		#Añade usuarios a grupos
		echo "Usuario ($us_n3) añadido al grupo ($gr_n3) existosamente"
		fi
	else
	#Si uno de los dos no existe mensaje de error
	echo "Error..."
	if grep -q -w "$us_n3" /etc/passwd
	#Comprueba si el usuario no existe
		then
		#Si el usuario existe introduce que el grupo no existe
		echo "Grupo ($gr_n3) inexistente..."
	elif grep -q -w "$gr_n3" /etc/group
	#Comrpueba si el grupo existe
		then
		#Si grupo existe introduce que usuario no existe
		echo "Usuario ($us_n3) inexistente..."
		else
		#Si ninguno de los dos existe lo introduce por pantalla
		echo "Usuario ($us_n3) y Grupo ($gr_n3) insexistentes..."
		fi
	fi
	read -p "Pulsa enter para continuar: "
;;
9)
        echo "Modo añadir Usuario a Grupo..."
        read -p "Nombre de Usuario a añadir: " us_n4
        read -p "Nombre del Grupo: " gr_n4
        if grep -q -w "$us_n4" /etc/passwd && grep -q -w "$gr_n4" /etc/group
	then
	if grep "$gr_n4" /etc/group | grep -q -w "$us_n4"
	#Comprueba si el usuario esta en el grupo
		then
		#Si esta lo elimina del grupo
		echo "Eliminando Usuario ($us_n4) del Grupo ($gr_n4)..."
		deluser --quiet "$us_n4" "$gr_n4"
		#Lo elimina del grupo sin introducir nada por pantalla
		echo "Usuario ($us_n4) eliminado del grupo ($gr_n4) exitosamente..."
		else
		#Si el usuario no esta en el grupo mensaje de erro
		echo "Error..."
		echo "Usuario ($us_n4) no se encuentra en el Grupo ($gr_n4)"
		fi
	else
	#Misma estructura de error que en el apartado 8)
	 echo "Error..." 
        if grep -q -w "$us_n4" /etc/passwd
                then    
                echo "Grupo ($gr_n4) inexistente..."
        elif grep -q -w "$gr_n4" /etc/group
                then
                echo "Usuario ($us_n4) inexistente..."
                else
                echo "Usuario ($us_n4) y Grupo ($gr_n4) insexistentes..."
                fi
	fi
	read -p "Pulse enter para continuar: "
;;
10)
	echo "Modo Cambiar contraseña"
	read -s -p "Intruduce la nueva contraseña: " Con1
	read -s -p "Vuelve a introducir la nueva contraseña: " Con2
	if [ $Con1 = $Con2 ]
	#Confirmacion si el usuario escribio bien la contraseña nueva
	then
	#Si la escribio bien cambia la actual
	echo "Cambiando contraseña..." & sleep 1
	echo "$Con1" > /home/pan/Documentos/Contraseña.txt
	#Cambia el contenido del archivo contraseña
	echo "Contraseña actualizada"
	else
	#Si la escribio mal introduce mensaje de error
	echo "Error..."
	echo "Las contraseñas no coinciden"
	fi		#Si ninguno de los dos existe lo introduce por pantalla
	read -p "Pulsa enter para continuar: "
;;
11)
	echo "Saliendo..." & sleep 2
	exit 0
	#Termina la ejecucion del escript
;;
*)
	#Opcion de control de errores
	echo "error"
	echo "opcion incorrecta..."
	read -p "Pulsa enter para continuar: "
;;
esac
done

else 
#Si la contraseña introducida no coincide con la actual mensaje de error
echo "Error..."
echo "Contraseña incorrecta"
fi
