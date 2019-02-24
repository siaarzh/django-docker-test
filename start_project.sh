#/bin/sh

CURRENT_UID=$(id -u):$(id -g) docker-compose run mysite django-admin startproject mysite .