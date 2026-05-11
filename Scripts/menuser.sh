#!/bin/bash

clear
echo "-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-."
echo ".   O   P E Q U E N O   G I L B E R T   ."
echo "-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-."
echo ""
echo "                .-\"\"\"\"-."
echo "              .'  .--.  '."
echo "             /   /    \   \\"
echo "            |   | 0  0 |   |"
echo "            |   |  __  |   |"
echo "             \\   \\____/   /"
echo "              '._.___._.'"
echo "                 /| |\\"
echo "                /_| |_\\"
echo "                  / \\"
echo "                 /___\\"
sleep 5

while true 
do
clear
echo "1 - crear usuario"
echo "2 - borrar usuario"
echo "3 - salir del menu"
read -p "Opcion: " men_op

if [ "$men_op" = "1" ]; then
		read -p "Nombre usuario: " us_er
		if grep -q $us_er /etc/passwd;
		then echo "usuario $us_er ya existe"; sleep 3
		else useradd $us_er; echo "Usuario $us_er creado"; sleep 3
		fi

elif [ "$men_op" = "2" ]; then
		read -p "Nombre usuario: " us_er
                if grep -q $us_er /etc/passwd;
                then deluser $us_er ; echo "usuario $us_er borrado"; sleep 3
                else echo "Usuario $us_er no existe"; sleep 3

                fi
elif [ "$men_op" = "3" ]; then exit 0

else
echo "error"
sleep 3
fi
done
