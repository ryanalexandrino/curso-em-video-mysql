
# Comando para uso do banco de dados
USE cadastro;

# Consulta os registros atuais das tabela gafanhotos
SELECT * FROM gafanhotos;

# Consulta os registros atuais das tabela gafanhotos
SELECT * FROM cursos;

# Consulta os registros atuais das tabela cursos
# Ordena em ordem alfabétca através do comando "ORDER BY" junto ao "ASC"
SELECT * FROM cursos
ORDER BY nome ASC;

# Consulta os registros atuais das tabela cursos
# Ordena em ordem alfabétca inversa através do comando "ORDER BY" junto ao "DESC"
SELECT * FROM cursos
ORDER BY nome DESC;

# Consulta apenas as colunas nome, carga e ano
# Ordenando primeiro pelo ano e depois por nome
SELECT nome, carga, ano 
FROM cursos
ORDER BY ano, nome;

# Consulta todos os registros de cursos realizados em 2016 ordenando por nome
SELECT * FROM cursos
WHERE ano = '2016'
ORDER BY nome;

# Consulta nome, descrição e ano de cursos realizados antes de 2015, oredenando por ano e depois nome
# Para isso, utiliza o operador lógico "<" (menor)
SELECT nome, descricao, ano 
FROM cursos
WHERE ano <= '2015'
ORDER BY ano, nome;

# Consulta nome e ano de cursos realizado entre 2014 e 2016
# Para isso,, usa o comando "BETWEEN", para definir um intervalo de valores
SELECT nome, ano
FROM cursos
WHERE ano BETWEEN 2014 and 2016
ORDER BY ano DESC, nome ASC;

# Consulta nome, descricao e ano de cursos realizados nos anos especificados
# Para isso, utliza o comando 'IN", para especificar valores 
SELECT nome, descricao, ano 
FROM cursos
WHERE ano IN ('2014', '2016', '2020')
ORDER BY ano;

# Consulta nome, carga e total de aulas de cursos que cumprem todas as  condições
# Para isso, utiliza-se o operador lógico "AND"
SELECT nome, carga, totaulas
FROM cursos
WHERE carga > 35 AND totaulas < 30;

# Consulta nome, carga e total de aulas de cursos que cumprem alguma das condições
# Para isso, utiliza-se o operador lógico "OR"
SELECT nome, carga, totaulas
FROM cursos
WHERE carga > 35 OR totaulas < 30;
