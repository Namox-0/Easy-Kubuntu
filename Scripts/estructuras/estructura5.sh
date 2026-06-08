
#!/bin/bash

while [ "$nombre_usuario" = "$nombre_usuario" ]
do
read -p "Nombre carpeta: " nombre_usuario
	echo "nombre $nombre_usuario reconocido exitosamente"
clear
 
if [ "$nombre_usuario" = "fernando" ] || [ "$nombre_usuario" = "Fernando" ]; then echo "La carpeta ya existe"

elif [ "$nombre_usuario" = "Enrique" ] || [ "$nombre_usuario" = "enrique" ]; then echo "La carpeta ya existe"

elif [ "$nombre_usuario" = "Mario" ] || [ "$nombre_usuario" = "mario" ]; then echo "La carpeta ya existe"

elif [ "$nombre_usuario" = "Salir" ] || [ "$nombre_usuario" = "salir" ]; then echo "saliendo"; exit 0

else

mkdir -p /home/$nombre_usuario/documentos && echo "carpeta documentos creada exitosamente"
mkdir -p /home/$nombre_usuario/descargas && echo "carpeta descargas creada exitosamente"
mkdir -p /home/$nombre_usuario/imagenes && echo "carpeta imagenes creada exitosamente"
mkdir -p /home/$nombre_usuario/music && echo "carpeta music creada exitosamente"

fi  
done  
