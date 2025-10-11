
# 1. Uma lista com as profissões dos gafanhotos e seus respectivos quantitativos
SELECT profissao, COUNT(*) FROM gafanhotos
GROUP BY profissao
ORDER BY COUNT(*) DESC;

# 2. Quantos gafanhotos homens e quantas mulheres nasceram após 01/01/2005?
SELECT sexo, COUNT(*) FROM gafanhotos
WHERE nascimento > '2005-01-01'
GROUP BY sexo
ORDER BY sexo ASC;

# 3. Uma lista com os gafonhotos que nasceram fora do Brasil, mostrando o país de origem e o total de pessoas nascidas lá. 
# Só nos interessam os páises que tiverem mais de 3 gafanhotos com essa nacionalidade
SELECT nacionalidade, COUNT(*) FROM gafanhotos
WHERE nacionalidade NOT IN ('Brasil')
GROUP BY nacionalidade
HAVING COUNT(*) > 3
ORDER BY nacionalidade ASC;

# 4. Uma lista agrupada pela altura dos gafanhotos, mostrando quantas pessoas pesam mais de 100kg e estão acima da média de altura de todos os cadastrados
SELECT altura, COUNT(*) FROM gafanhotos
WHERE peso > '100'
GROUP BY altura
HAVING altura > (SELECT AVG(altura) FROM gafanhotos)
ORDER BY altura DESC;