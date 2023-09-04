DROP TABLE IF EXISTS projeto_db.stg_digivolutions;

CREATE EXTERNAL TABLE IF NOT EXISTS projeto_db.stg_digivolutions (
    Number STRING,
    Digivolves_from STRING,
    Digivolves_to STRING
) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';';

LOAD DATA INPATH '/user/vanderlei_junior/digivolutions/Digivolutions.csv' OVERWRITE INTO TABLE projeto_db.stg_digivolutions;