FROM postgres:latest

COPY title.basics.tsv /title.basics.tsv
COPY title.ratings.tsv /title.ratings.tsv

RUN awk -F'\t' '$2 == "movie"' /title.basics.tsv > /title.basics.filtered.tsv

COPY init.sql /docker-entrypoint-initdb.d/

ENV POSTGRES_DB=imdb_movies
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=123456