
# Apaga os registros com base na condição de ano
DELETE FROM cursos
WHERE ano = '2018'
LIMIT 3;

# Verifica se os registros foram apagados
SELECT * FROM cursos;

# Apaga todos os registros de uma tabela
TRUNCATE cursos;

# Verifica se os registros foram apagados
SELECT * FROM cursos; 