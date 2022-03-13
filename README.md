
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
