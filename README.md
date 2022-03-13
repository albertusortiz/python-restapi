
# [Docker & Python Flask. Contenedores con Python](https://www.youtube.com/watch?v=YENw-bNHZwg)

## Activar entorno virtual

env\Scripts\activate.bat


## Construir imagen de Docker

docker build -t flaskapp .

## Correr imagen y entrar a su consola

docker run -it flaskapp /bin/sh

## Correr imagen y accediendo al sistema desde el puerto 7000
docker run -it --publish 7000:4000 flaskapp

# Correr imagen como un proceso (retorna un ID)
docker run -it -p 7000:4000 -d flaskapp

## Ver contenedores ejecutandose
docker container ls

## Detener un container
docker stop CONTAINER_ID


--------------------------------------------------

# Publicar imagen en Docker Hub

## Prepara nombre de imagen

- En el caso de Docker Hub necesitamos que nuestra imagen se llame nombre_de_usuario/nombre_del_repositorio:etiqueta

docker tag flaskapp albertusortiz/flaskapp:v1

- Si ejecutas docker images, te darás cuenta de que no ha modificado la imagen original sino que simplemente se ha creado una especie de alias sobre la misma imagen, ya que el id de la imagen, tanto de la original como de esta, es el mismo. Ahora que ya cumplimos los requerimientos, utilizamos el comando docker push para subir la imagen:

docker push albertusortiz/flaskapp:v1