#!/bin/bash

read -p "Nombre usuario: " user_name
if grep -q $user_name /etc/passwd
	then echo "usuario $user_name encontrado"
else
	echo "usuario $user_name no encontrado"
fi
