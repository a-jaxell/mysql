FROM mysql:8.0.0

ENV MYSQL_DATABASE=laboration_1
ENV MYSQL_ROOT_PASSWORD=root
# Cpy sql scripts into init folder
COPY book_store.sql /docker-entrypoint.initdb.d/
COPY moon-missions.sql.sql /docker-entrypoint.initdb.d/

# Push to repo
# Build docker image with copied .sql files from repo pasted into volume
# Or build .sql images into initialization of docker container start
# run docker image with specified volume
# access files on initialization

# bygg ihop en image av de .sql filer som finns i repot och pasta in
# få docker containern att starta och köra de sql script när man kör containern
# filerna ska finnas tillgängliga när man ansluter till MySQL servern