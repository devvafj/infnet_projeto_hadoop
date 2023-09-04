-- Top 5 digimons com o maior valor em DEF
SELECT Digimon, DEF_lvl_99 FROM projeto_db.stg_digimon GROUP BY Digimon, DEF_lvl_99 ORDER BY DEF_lvl_99 DESC LIMIT 5;