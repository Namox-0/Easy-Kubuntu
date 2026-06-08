
#!/bin/bash

read -p "Nombre carpeta: " nombre_usuario && echo "nombre $nombre_usuario reconocido exitosamente"

if [ "$nombre_usuario" = "fernando" ] || [ "$nombre_usuario" = "Fernando" ]; then echo "La carpeta ya existe"

elif [ "$nombre_usuario" = "Enrique" ] || [ "$nombre_usuario" = "enrique" ]; then echo "La carpeta ya existe"

else

mkdir -p /home/$nombre_usuario/documentos && echo "carpeta documentos creada exitosamente"
mkdir -p /home/$nombre_usuario/descargas && echo "carpeta descargas creada exitosamente"
mkdir -p /home/$nombre_usuario/imagenes && echo "carpeta imagenes creada exitosamente"
mkdir -p /home/$nombre_usuario/music && echo "carpeta music creada exitosamente"

fi  
