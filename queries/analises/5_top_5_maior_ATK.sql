-- Top 5 digimons com o maior valor em ATK
SELECT Digimon, ATK_lvl_99 FROM projeto_db.stg_digimon GROUP BY Digimon, ATK_lvl_99 ORDER BY ATK_lvl_99 DESC LIMIT 5;