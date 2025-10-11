
# Comando para uso do banco de dados
USE cadastro;

# Mostra a estrutura da tabela gafanhotos
DESCRIBE gafanhotos;

# Adiciona um coluna/campo que servirá como chave estrangeira
ALTER TABLE gafanhotos
ADD COLUMN curso_preferido int;

# Adiciona o campo recém criado como uma chave estrangeira
ALTER TABLE gafanhotos
ADD FOREIGN KEY (curso_preferido)
REFERENCES cursos(idcurso);

# Verifica os registros das duas tabelas, a que contém a PK e a que contém a FK
SELECT * FROM cursos;
SELECT * FROM gafanhotos;

# Atuliza um registro, adicionado um valor a um campo de FK
UPDATE gafanhotos set curso_preferido = '6'
WHERE id = '1';

# Deleta um curso que não contém nenhuma referência relacional
# Caso esse curso estivesse referenciado como FK, isso não seria possível
DELETE from cursos 
WHERE idcurso = '28';