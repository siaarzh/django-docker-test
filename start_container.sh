#/bin/sh

docker run -it --rm -p 8000:8000/tcp --user $(id -u):$(id -g) -v "$(pwd):/code" mysite:latest sh
# docker run -it --rm -p 8000:8000/tcp -v "$(pwd):/code" mysite:latest sh