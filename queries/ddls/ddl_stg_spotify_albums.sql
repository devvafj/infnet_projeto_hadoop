DROP TABLE IF EXISTS spotify_db.stg_spotify_albums;

CREATE TABLE IF NOT EXISTS spotify_db.stg_spotify_albums (
    index STRING,
    album_type STRING,
    artist_id STRING,
    available_markets STRING,
    external_urls STRING,
    href STRING,
    id STRING,
    images STRING,
    name STRING,
    release_date STRING,
    release_date_precision STRING,
    total_tracks STRING,
    track_id STRING,
    track_name_prev STRING,
    uri STRING,
    type STRING
) STORED AS TEXTFILE;

LOAD DATA INPATH '/user/vanderlei_junior/stg_spotify/tracks/spotify_albums.csv' OVERWRITE INTO TABLE spotify_db.stg_spotify_albums;