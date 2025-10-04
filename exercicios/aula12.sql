
-- Exercicios
# 1. Uma lista com o nome de todas as gafanhotas
SELECT nome FROM gafanhotos
WHERE sexo = 'F';

# 2. Uma lista com dados de todas aqueles que nasceram entre 01/01/2000 e 31/12/2015
SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' AND '2015-12-31'
ORDER BY nascimento ASC;

# 3. Uma lista com o nome de todos os homens que trabalham como Programadores
SELECT nome FROM gafanhotos
WHERE sexo = 'M' AND profissao = 'Programador';

# 4. Uma lista com os dados de todas as mulheres que nasceram no Brasil e que têm seu nome iniciando com a letra "J"
SELECT * from gafanhotos
WHERE sexo = 'F' AND nacionalidade = 'Brasil' AND nome LIKE 'J%';

# 5. Uma lista com o nome e a nacionalidade de todos os homens que têm Silva no nome, não nasceram no Brasil e pesam meno que 100KG
SELECT nome, nacionalidade FROM gafanhotos
WHERE sexo = 'M' AND nome LIKE '%Silva%' AND nacionalidade NOT IN ('Brasil') AND peso < '100';

# 6. Qual é a maior altra entre gafanhotos homens que moram no Brasil?
SELECT MAX(altura) FROM gafanhotos
WHERE sexo = 'M' AND nacionalidade = 'Brasil';

# 7. Qual é a média de peso dos gafanhotos
SELECT AVG(peso) FROM gafanhotos;

