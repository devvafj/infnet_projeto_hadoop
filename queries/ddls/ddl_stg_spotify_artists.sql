DROP TABLE IF EXISTS spotify_db.stg_spotify_artists;

CREATE TABLE IF NOT EXISTS spotify_db.stg_spotify_artists (
    index STRING,
    artist_popularity STRING,
    followers STRING,
    genres STRING,
    id STRING,
    name STRING,
    track_id STRING,
    track_name_prev STRING,
    type STRING
) STORED AS TEXTFILE;

LOAD DATA INPATH '/user/vanderlei_junior/stg_spotify/tracks/spotify_artists.csv' OVERWRITE INTO TABLE spotify_db.stg_spotify_artists;