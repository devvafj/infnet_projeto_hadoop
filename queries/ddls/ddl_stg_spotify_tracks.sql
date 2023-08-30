DROP TABLE IF EXISTS spotify_db.stg_spotify_tracks;

CREATE TABLE IF NOT EXISTS spotify_db.stg_spotify_tracks (
    index STRING,
    acousticness STRING,
    album_id STRING,
    analysis_url STRING,
    artists_id STRING,
    available_markets STRING,
    country STRING,
    danceability STRING,
    disc_number STRING,
    duration_ms STRING,
    energy STRING,
    href STRING,
    id STRING,
    instrumentalness STRING,
    key STRING,
    liveness STRING,
    loudness STRING,
    lyrics STRING,
    mode STRING,
    name STRING,
    playlist STRING,
    popularity STRING,
    preview_url STRING,
    speechiness STRING,
    tempo STRING,
    time_signature STRING,
    track_href STRING,
    track_name_prev STRING,
    track_number STRING,
    uri STRING,
    valence STRING,
    type STRING
) STORED AS TEXTFILE;

LOAD DATA INPATH '/user/vanderlei_junior/stg_spotify/tracks/spotify_tracks.csv' OVERWRITE INTO TABLE spotify_db.stg_spotify_tracks;