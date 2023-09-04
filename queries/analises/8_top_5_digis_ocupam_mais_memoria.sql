-- Top 5 digimons que ocupam a maior quantidade de memória
SELECT Digimon, Memory FROM projeto_db.stg_digimon ORDER BY Memory DESC LIMIT 5;