# Moon Missions and Bookstore database with mysql


A school assignment that's combined into a base image of MySQL.
.sql files are copied into ``/docker-entrypoint-initdb.d/`` and then run on build.

This is all laid out in a workflow that builds and publishes the finished result on docker hub.

**To run using the CLI use:** ``docker run -p3306:3306 --name my-name ajaxell/mysql-bookstore:latest``

Docker image [here](https://hub.docker.com/r/ajaxell/mysql-bookstore/tags)
