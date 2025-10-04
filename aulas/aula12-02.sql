
# Consulta as nacionalidades distintas das pessoas 
# Utiliza o comando "DISTINCT" para exibir valores sem repetição
SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade ASC;

# Consulta as cargas horárias distintas dos cursos 
# Utiliza o comando "DISTINCT" para exibir valores sem repetição
SELECT DISTINCT carga from cursos
ORDER BY carga ASC;

# Conta todos os cursos
SELECT COUNT(*) FROM cursos;

# Conta todos os cursos que possuem carga horária maior que 40
SELECT COUNT(*) FROM cursos
WHERE carga > 40;

# Mostra o maior valor de carga horaria de cursos
SELECT MAX(carga) FROM cursos;

# Mostra o maior valor de carga horaria de cursos do ano de 2016,
# Utiliza uma condição junto a uma agregação
SELECT MAX(totaulas) FROM cursos
WHERE ano = '2016';

# Mostra o menor valor de aulas horaria de cursos do ano de 2015
SELECT MIN(totaulas) FROM cursos
WHERE ano = '2015';

# Soma os valores de aulas de cursos no ano de 2016
SELECT SUM(totaulas) FROM cursos
WHERE ano = 2016;

# Mostra a média de aulas dos cursos do ano de 2016
SELECT AVG(totaulas) FROM cursos
WHERE ano = '2016';



