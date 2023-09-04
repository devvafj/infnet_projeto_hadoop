-- Quantos digimons existem por estágio?
SELECT Stage, count(*) AS qt_digimons FROM projeto_db.stg_digimon GROUP BY Stage;