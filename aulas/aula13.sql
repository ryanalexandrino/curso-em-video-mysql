
# Comando para uso do banco de dados
USE cadastro;

# Consulta o total de aulas agrupadas pelo total de aulas
SELECT totaulas, COUNT(*) FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

# Consulta a carga de aulas agrupadas onde o total de aula é maior que 30
SELECT carga, COUNT(*) FROM cursos 
WHERE totaulas = 30
GROUP BY carga;

# Consulta os anos de curso de maneira agrupada, somente os grupos maiores de 5
SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
HAVING COUNT(ano) >= 5
ORDER BY COUNT(*) DESC;

# Consulta a carga de aulas de maneira agrupada onde o ano é maior que 2015 e o agrupamento de cargas é maior que a média das cargas
SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);
