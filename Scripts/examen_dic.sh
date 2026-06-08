#!/bin/bash

#para que el script funcione correctamente ejecutar
#chmod u+w $HOME/Documentos/Diccionario.txt 
#chown $USER:$USER $HOME/Documentos/Diccionario.txt

# ==========================================
# Pantalla de Bienvenida
# ==========================================

# Limpia la terminal
clear

# Muestra el título del programa
echo "#############################################################"
echo "#          DICCIONARIO DE CONTRASEÑAS                       #"
echo "#############################################################"
echo "*******************************************"
echo "**   O   P E Q U E N O   G I L B E R T   **"
echo "*******************************************"
echo "**                                       **"
echo "**                 .-\"\"\"\"-.              **"
echo "**               .'  .--.  '.            **"
echo "**              /   /    \   \\           **"
echo "**             |   | 0  0 |   |          **"
echo "**             |   |  __  |   |          **"
echo "**              \\   \\____/   /           **"
echo "**               '._.___._.'             **"
echo "**                  /| |\\                **"
echo "**                 /_| |_\\               **"
echo "**                   / \\                 **"
echo "**                  /___\\                **"
echo "*******************************************"
# Muestra el nombre del programador
echo "Programador: Daniel Lombardero Nuñez"

# Defino una variable como la fecha actual
dat=$(date)
# Muestra la fecha actual del sistema
echo "Fecha: $dat"

# Muestra el motivo del programa
echo "Motivo: Examen Recuperación 3ª EVA"

# Espera a que el usuario pulse una tecla
read -p "Pulse enter para continuar..."

# Limpia nuevamente la pantalla
clear

# ==========================================
# Creación del archivo Diccionario.txt
# ==========================================

# Guarda la ruta del diccionario en una variable
ARCHIVO="$HOME/Documentos/Diccionario.txt"

# Comprueba si el archivo existe
if [ ! -f "$ARCHIVO" ]
then
    # Si no existe, lo crea
    touch "$ARCHIVO"
    echo "Diccionario creado."

else
    # Si existe, continúa normalmente
    echo "Diccionario existente."

fi

# ==========================================
# Bucle principal del programa
# ==========================================

while true
do
    # Limpia la pantalla antes de mostrar el menú
    clear
    # Menú principal
    echo "1) Añadir palabra"
    echo "2) Eliminar palabra"
    echo "3) Mostrar contenido"
    echo "4) Eliminar diccionario"
    echo "5) Exportar con otro nombre"
    echo "6) Restaurar"
    echo "7) Salir"
    # Lee la opción elegida por el usuario
    read -p "Seleccione una opción: " op
    # Ejecuta la opción seleccionada
    case $op in
    1)
        # Opción para añadir una palabra
        read -p "Introduzca palabra: " pal

        # Comprueba si la palabra ya existe usando grep
        if grep -qx "$pal" "$ARCHIVO"
        then
            echo "Error: la palabra ya existe."
        else
            # Añade la palabra al final del archivo
            echo "$pal" >> "$ARCHIVO"
            echo "Palabra añadida."
        fi
        # Pausa del programa
        read -p "Pulse ENTER para continuar..."
    ;;
    2)
        # Opción para eliminar una palabra
        read -p "Introduzca palabra: " pal
        # Comprueba si existe la palabra
        if grep -qx "$pal" "$ARCHIVO"
        then
            # Elimina la línea que contiene la palabra
            sed -i "/^$pal$/d" "$ARCHIVO"
            echo "Palabra eliminada."
        else
            echo "Error: la palabra no existe."
        fi
        read -p "Pulse ENTER para continuar..."
    ;;
    3)
        # Muestra el contenido completo del diccionario
        cat "$ARCHIVO"
        read -p "Pulse ENTER para continuar..."
    ;;
    4)
        # Borra el diccionario y lo vuelve a crear vacío
        rm -f "$ARCHIVO"
        touch "$ARCHIVO"
        echo "Diccionario eliminado."
        read -p "Pulse ENTER para continuar..."
    ;;
    5)
        # Exporta el diccionario con otro nombre
        read -p "Nombre del archivo: " nombre
        cp "$ARCHIVO" "$HOME/Documentos/$nombre"
        echo "Exportación realizada."
        read -p "Pulse ENTER para continuar..."
    ;;
    6)
        # Restaura el diccionario desde una copia existente
        read -p "Archivo a restaurar: " nombre

        # Comprueba si existe el archivo indicado
        if [ -f "$HOME/Documentos/$nombre" ]
        then
            # Sustituye el diccionario actual por la copia
            cp "$HOME/Documentos/$nombre" "$ARCHIVO"
            echo "Restauración completada."
        else
            echo "Error: archivo no encontrado."
        fi
        read -p "Pulse ENTER para continuar..."
    ;;
    7)
        # Finaliza la ejecución del programa
        exit 0
    ;;
    *)
        # Mensaje de error para opciones no válidas
        echo "Opción incorrecta."
        read -p "Pulse ENTER para continuar..."
    ;;
    esac
done
