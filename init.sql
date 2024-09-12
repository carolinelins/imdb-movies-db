CREATE TABLE temp_table1 (
    tconst TEXT,
    titleType TEXT,
    primaryTitle TEXT,
    originalTitle TEXT,
    isAdult SMALLINT,
    startYear TEXT,
    endYear TEXT,
    runtimeMinutes TEXT,
    genres TEXT
);

CREATE TABLE temp_table2 (
    tconst TEXT,
    averageRating NUMERIC(3, 1),
    numVotes INTEGER
);

COPY temp_table1 FROM '/title.basics.filtered.tsv' DELIMITER E'\t' CSV HEADER;
COPY temp_table2 FROM '/title.ratings.tsv' DELIMITER E'\t' CSV HEADER;

CREATE TABLE imdb_movies (
    tconst TEXT PRIMARY KEY,
    title TEXT,
    genres TEXT[],
    release_year INTEGER,
    runtime INTEGER,
    rating NUMERIC(3, 1),
    poster TEXT
);

INSERT INTO imdb_movies (tconst, title, genres, release_year, runtime, rating, poster)
SELECT
    t1.tconst,
    t1.primaryTitle AS title,
    string_to_array(nullif(t1.genres, '\N'), ',') AS genres,
    nullif(t1.startYear, '\N')::INTEGER AS release_year,
    nullif(t1.runtimeMinutes, '\N')::INTEGER AS runtime,
    t2.averageRating AS rating,
    NULL AS poster
FROM temp_table1 t1
LEFT JOIN temp_table2 t2 ON t1.tconst = t2.tconst;  

DROP TABLE temp_table1;
DROP TABLE temp_table2;