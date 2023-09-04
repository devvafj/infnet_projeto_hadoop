-- Top 5 digimons com o maior valor em SPD
SELECT Digimon, SPD_lvl_99 FROM projeto_db.stg_digimon GROUP BY Digimon, SPD_lvl_99 ORDER BY SPD_lvl_99 DESC LIMIT 5;