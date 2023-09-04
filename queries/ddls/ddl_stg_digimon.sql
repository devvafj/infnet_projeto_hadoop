DROP TABLE IF EXISTS projeto_db.stg_digimon;

CREATE EXTERNAL TABLE IF NOT EXISTS projeto_db.stg_digimon (
    Number STRING,
    Digimon STRING,
    Stage STRING,
    Type STRING,
    Attribute STRING,
    Memory STRING,
    Equip_Slots STRING,
    HP_lvl_1 STRING,
    SP_lvl_1 STRING,
    ATK_lvl_1 STRING,
    DEF_lvl_1 STRING,
    INT_lvl_1 STRING,
    SPD_lvl_1 STRING,
    HP_lvl_50 STRING,
    SP_lvl_50 STRING,
    ATK_lvl_50 STRING,
    DEF_lvl_50 STRING,
    INT_lvl_50 STRING,
    SPD_lvl_50 STRING,
    HP_lvl_99 STRING,
    SP_lvl_99 STRING,
    ATK_lvl_99 STRING,
    DEF_lvl_99 STRING,
    INT_lvl_99 STRING,
    SPD_lvl_99 STRING
) 
ROW FORMAT DELIMITED 
FIELDS TERMINATED BY ';';

LOAD DATA INPATH '/user/vanderlei_junior/digimon/Digimon.csv' OVERWRITE INTO TABLE projeto_db.stg_digimon;