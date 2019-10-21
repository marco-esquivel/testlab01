#!/bin/bash
#
# Ejecutar Contenedores - retoIBM.
# Autor : Marco A. Esquivel Talavera
#
# #Crear directorio - Dockerfile NGINX y PHP
mkdir -p /tmp/retoibm; cd /tmp/retoibm



# #Construir contenedor - Dockerfile NGINX
sudo docker build -t "retoibm-nginx-content" .

# #Ejecutar contenedor - Dockerfile NGINX - respode al puerto 9080
sudo docker run --name retoibm-nginx -d -p 9080:80 retoibm-nginx

# #Bajamos proyecto GitHub - php
git clone https://github.com/arcmop/retobase-php.git

# #Construir contenedor - Dockerfile PHP

