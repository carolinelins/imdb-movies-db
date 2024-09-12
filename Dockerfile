FROM postgres:latest

COPY title.basics.filtered.tsv /title.basics.filtered.tsv
COPY title.ratings.tsv /title.ratings.tsv

COPY init.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_DB=imdb_movies
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=123456