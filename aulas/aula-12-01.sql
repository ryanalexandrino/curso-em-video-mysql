
# Comando para uso do banco de dados
USE cadastro;

# Consulta todos os cursos que começam com a letra "P"
# Para isso, utiliza-se o comando "LIKE" junto ao operador "%" depois da letra "P"
SELECT * FROM cursos
WHERE nome LIKE 'P%';

# Consulta todos os cursos que terminam com a letra "A"
# Para isso, utiliza-se o comando "LIKE" junto ao operador "%" antes da letra "A"
SELECT * FROM cursos
WHERE nome LIKE '%a';

# Consulta todos os cursos que possuee a letra "A" em qualquer posição
# Para isso, utiliza-se o comando "LIKE" junto ao operador "%" antes e depois da letra "A"
SELECT * FROM cursos
WHERE nome LIKE '%a%';

# Consulta todos os cursos que começam com"PH" e terminam com "P"
# Para isso, utiliza-se o comando "LIKE" junto ao operador "%" antes de "P"
SELECT * FROM cursos
WHERE nome LIKE 'PH%p';

# Consulta todos os cursos que começam com"PH" e possuem "P" e terminam com algum caractere
# Para isso, utiliza-se o comando "LIKE" junto ao operador "%" antes de "P" e o operador "_" para simbolizar um caractere
SELECT * FROM cursos
WHERE nome LIKE 'PH%p_';

# Consulta todas as pessoas que possuem "Silva" como último sobrenome
# Para isso, utiliza-se o comando "LIKE" junto ao operador "%" antes de "Silva"
SELECT * FROM gafanhotos
WHERE nome LIKE '%Silva';
