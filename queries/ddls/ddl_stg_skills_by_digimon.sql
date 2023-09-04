DROP TABLE IF EXISTS projeto_db.stg_skills_by_digimon;

CREATE EXTERNAL TABLE IF NOT EXISTS projeto_db.stg_skills_by_digimon (
    Number STRING,
    Digimon STRING,
    Skill STRING,
    Level STRING
) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';';

LOAD DATA INPATH '/user/vanderlei_junior/skills_by_digimon/Skills_by_Digimon.csv' OVERWRITE INTO TABLE projeto_db.stg_skills_by_digimon;