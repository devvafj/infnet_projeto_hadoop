import pandas as pd
import numpy as np

#--------------------------------------------------------------------------
input_path="C:\\Users\\Vandinho\\Projetos\\Pessoais\\infnet_projeto_hadoop\\input"
output_path="C:\\Users\\Vandinho\\Projetos\\Pessoais\\infnet_projeto_hadoop\\output"

# Sem problemas aparentes nos digimons
digimon="Digimon.csv"

# Corrigir: Últimas duas linhas sem dados, somente separadores
digivolutions="Digivolutions.csv"

# Sem problemas aparentes nas skills
skills="Skills.csv"

# Corrigir: Linhas 300 e 301 está faltando preencher a coluna Number
skills_by="Skills_by_Digimon.csv"

# Digimon: Somente remover cabeçalho -------------------------------------------
df_digimon = pd.read_csv(f"{input_path}\\{digimon}", delimiter=';')
df_digimon.to_csv(f"{output_path}\\{digimon}", sep=";", index=False, header=None)

# Digivolutions ---------------------------------------------------------------
df_digivolutions = pd.read_csv(f"{input_path}\\{digivolutions}", delimiter=';')
print(f"Digivolutions - Tamanho antes da limpeza: {len(df_digivolutions)}")

df_digivolutions = df_digivolutions.dropna(axis = 0, how = 'all')
print(f"Digivolutions - Tamanho após a limpeza: {len(df_digivolutions)}")
df_digivolutions.to_csv(f"{output_path}\\{digivolutions}", sep=";", index=False, header=None)

# Skills: Somente remover cabeçalho -------------------------------------------
df_skills = pd.read_csv(f"{input_path}\\{skills}", delimiter=';')
df_skills.to_csv(f"{output_path}\\{skills}", sep=";", index=False, header=None)

# Skills by Digimon  ----------------------------------------------------------
df_skills_by = pd.read_csv(f"{input_path}\\{skills_by}", delimiter=';')
df_skills_by.loc[df_skills_by['Digimon'] == 'Coredramon (Blue)', 'Number'] = 96

print(f"Skills by Digimon - Linhas 300 e 301: {df_skills_by.loc[298:299]}")
df_skills_by.to_csv(f"{output_path}\\{skills_by}", sep=";", index=False, header=None)