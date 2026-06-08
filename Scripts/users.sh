#!/bin/bash

#Creamos usuarios y sus contraseñas
useradd jefe
passwd jefe

useradd admin1
passwd admin1

useradd admin2
passwd admin2

cat /etc/passwd | grep sh

#creamos carpetas
mkdir /home/jefe
mkdir /home/jefe/ENTRADA
mkdir /home/jefe/SALIDA

#Pasamos la carpeta al usuario jefe
chown -R jefe:jefe /home/jefe
chmod 755 /home/jefe

#Creamos y añadimos usuarios al grupo
groupadd administradores
usermod -aG administradores admin1
usermod -aG administradores admin2

#Damos permisos al grupo
chown jefe:administradores /home/jefe/ENTRADA
chmod 2770 /home/jefe/ENTRADA
chown jefe:administradores /home/jefe/SALIDA
chmod 750 /home/jefe/SALIDA

su jefe

