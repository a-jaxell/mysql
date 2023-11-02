FROM mysql:8.2.0-oracle

ENV MYSQL_ROOT_PASSWORD=root
# Cpy sql scripts into init folder
COPY Laboration1.sql /docker-entrypoint.initdb.d/
COPY moon_missions.sql /docker-entrypoint.initdb.d/
COPY book_store.sql /docker-entrypoint.initdb.d/
COPY insert_data.sql /docker-entrypoint.initdb.d/