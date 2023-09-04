-- Qual técnica custa a maior quantidade de energia (SP)? 
SELECT Skill FROM projeto_db.stg_skills ORDER BY SP_Cost DESC LIMIT 1;

-- Quais digimons podem aprendê-la?
SELECT dg.Digimon 
    FROM projeto_db.stg_digimon dg
INNER JOIN projeto_db.stg_skills_by_digimon skd
    ON skd.Number = dg.Number
WHERE skd.Skill = 'Protect Wave (Awake)';
