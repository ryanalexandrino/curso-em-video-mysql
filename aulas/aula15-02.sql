
# Consulta os campos da tabela gafanhotos individualmente
SELECT nome, curso_preferido FROM gafanhotos;

# Consulta os campos da tabela cursos individualmente
SELECT nome, ano FROM cursos;

# Consulta os campos das duas tabelas usando INNER JOIN
# Ao usar o INNER JOIN, apenas registros que possuem relação entre as duas tabelas serão consultados
SELECT gafanhotos.nome, cursos.nome, cursos.ano 
FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.curso_preferido
ORDER BY gafanhotos.nome ASC;

# Consulta os campos das duas tabelas usando INNER JOIN
# Faz uso de ALIAS, tanto no nome de retorno dos campos, como nas referência das tabelas
SELECT g.nome 'nome do aluno', c.nome as 'curso preferido', c.ano 
FROM gafanhotos as g JOIN cursos as c
ON c.idcurso = g.curso_preferido
ORDER BY g.nome ASC;

# Consulta os campos das duas tabelas usando LEFT JOIN
# Ao usar o LEFT JOIN, registro da tabela da esquerda do JOIN, no caso gafanhotos, serão consultados também, mesmo que não possuam relação com FK
SELECT g.nome 'nome do aluno', c.nome as 'curso preferido', c.ano 
FROM gafanhotos as g LEFT JOIN cursos as c
ON c.idcurso = g.curso_preferido;

# Consulta os campos das duas tabelas usando RIGHT JOIN
# Ao usar o LEFT JOIN, registro da tabela da direita do JOIN, no caso cursos, serão consultados também, mesmo que não possuam relação com FK
SELECT g.nome as 'nome do aluno', c.nome as 'curso preferido', c.ano 
FROM gafanhotos as g RIGHT JOIN cursos as c
ON c.idcurso = g.curso_preferido;