-- Top 5 digimons com o maior valor em HP
SELECT Digimon, HP_lvl_99 FROM projeto_db.stg_digimon GROUP BY Digimon, HP_lvl_99 ORDER BY HP_lvl_99 DESC LIMIT 5;