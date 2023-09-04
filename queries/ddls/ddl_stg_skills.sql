DROP TABLE IF EXISTS projeto_db.stg_skills;

CREATE EXTERNAL TABLE IF NOT EXISTS projeto_db.stg_skills (
    Skill STRING,
    SP_Cost STRING,
    Type STRING,
    Power STRING,
    Attribute STRING,
    Inheritable STRING,
    Description STRING
) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';';

LOAD DATA INPATH '/user/vanderlei_junior/skills/Skills.csv' OVERWRITE INTO TABLE projeto_db.stg_skills;