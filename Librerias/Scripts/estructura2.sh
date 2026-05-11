
#!/bin/bash

read -p "Nombre carpeta: " nombre_usuario && echo "nombre $nombre_usuario reconocido exitosamente"
mkdir -p /home/$nombre_usuario/documentos && echo "carpeta documentos creada exitosamente"
mkdir -p /home/$nombre_usuario/descargas && echo "carpeta descargas creada exitosamente"
mkdir -p /home/$nombre_usuario/imagenes && echo "carpeta imagenes creada exitosamente"
mkdir -p /home/$nombre_usuario/music && echo "carpeta music creada exitosamente"
