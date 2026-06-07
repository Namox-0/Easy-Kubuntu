#!/bin/bash
#Se pone al inicio del script para que sea ejecutable
#todo lo que se escribe con # no se ejcuta sirve para comentarios de explicacion internos

#limpia la terminal
clear
#permite definir una variable y introduce texto entrecomillado
read -p "Introduzca el nombre del usuario a buscar: " us

#la variables ya definidas se ponen con $ para que surtan efecto
#grep buscara si el usuario escrito en la variable existe en el archivo de usuarios
# -w para que busque la palabra exacta
if grep -w "$us" /etc/passwd
#if para que si lo encuentre haga una cosa y si no otra
then
#lo que hara si coincide con el if y echo introduce el texto entrecomillado"
echo "el usuario $us existe dentro del sistema"

else
#para todo lo demas que no coincida con el if
echo "el usuario $us no existe en el sistema"

fi
#fi cierra el if
