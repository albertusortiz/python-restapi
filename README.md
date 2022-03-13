## Activar entorno virtual

env\Scripts\activate.bat


## Construir imagen de Docker

docker build -t flaskapp .

## Correr imagen y entrar a su consola

docker run -it flaskapp /bin/sh