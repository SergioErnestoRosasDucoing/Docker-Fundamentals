#Contenedor: Entorno asilado donde existen todas las dpeendendicias necesarias para ejecutar una aplicacion
#Hello-world, imagen: serie de instrucciones para levantar o crear un contenedor 
#Imagen --- Clase (Persona)
#Contenedor --- Objeto (Persona(Instancia)) espacio aislado
#Las imaemes viven en un repositorio de imagenes (Container Registry) Docker Hub
#https://hub.docker.com/
docker container run hello-world

#Listar contendores
docker container ls -a


#Crear contenedor que persista en el tiempo y esponga un puerto
#Izquierdo: puerto del host (maquina fisica)
#Derecho: puerto del contenedor
docker container run -d -p 8081:80 docker/getting-started

#Levantar pagina web con informacion 
#http://localhost:8081/tutorial/

#Detener contenedor
docker container stop <container_id o nombre>

#Eliminar contenedor
docker container rm <container_id>

#Eliminar contenedor forzosamente
docker container rm -fv <container_id>

#Iniciar contenedor que ya existe
docker container start <container_id> o <nombre>

#Crear contenedor con nombre Ubuntu
docker container run --name MaquinaVirtualUbuntu ubuntu

#Correr un comando para mantenerse prendido
docker container run --name MaquinaVirtualUbuntu ubuntu bash 
docker container run --name MVU ubuntu sleep 3600

#Entrar a un contenedor
docker container exec -it <container_id o nombre> <comando incio>
docker container exec -it MaquinaVirtualUbuntu bash

#Salir
exit

#NGNIX - Servidor web
docker container run -d -p 8080:80 nginx


#CREATE IMAGEN
#Dockerfile: Archivo de texto que contiene todas las instrucciones para crear una imagen
npm init -y

#Crear Index.js
#Instalar modulo express - servidor sudo npm install express
#Crear Dockerfile


# Crear imagen
docker build -t node-api:1.0 .
docker container run --name MyApi -d -p 3001:3000 node-api:1.0

#My sql
docker container run --name mysql -e MYSQL_ROOT_PASSWORD=123456 -d -p 3307:3306 mysql:8

#Logs
docker logs <container_id>

# Volumes Bind Volumes / volumenes Administrados
docker volume ls

# Crear volumen
docker volume create 411_mysqldb

# Networks
docker network create <nomnbre de network>

docker network connect <nombre de network> <nombre de contenedor>


#Login 
docker login -u juanfr97 -p <PASSWORD>

1. Se crea la aplicación
2. Se crea el Dockerfile
3. Construir la imagen
docker build -t sergioernestord/docker-fundamentals:v1 .

4. Publicar la imágen
docker push sergioernestord/docker-fundamentals2:v1

