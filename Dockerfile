FROM mysql:8.0

WORKDIR /docker-entrypoint-initdb.d

COPY ./sql-scripts/ /docker-entrypoint-initdb.d/