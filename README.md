# Bookstore database with mysql


This features a school assigment that combines some .sql files into
an mysql base docker image and then builds an image. This is all laid out in a 
workflow that builds and publishes the finished result on docker hub.

To run use ``docker run -p3306:3306 --name my-name ajaxell/mysql-bookstore:latest``

Docker image [here](https://hub.docker.com/r/ajaxell/mysql-bookstore/tags)
