
# Cria uma nova tabela no banco
# O uso do "IF NOT EXISTS" garante a criação apenas se não existir
# Constraint "UNIQUE" garante que valores duplicados para o campo não serão inseridos
# Constraint "UNSIGNED" garante que valores negativos não serão inseridos
CREATE TABLE IF NOT EXISTS curso (
	nome varchar (30) NOT NULL UNIQUE,
    descricao text,
    carga int UNSIGNED,
    totaulas int UNSIGNED,
    ano year  DEFAULT '2025'
) DEFAULT CHAR SET = utf8mb4;

# Altera o nome de toda a tabela
ALTER TABLE curso
RENAME TO cursos;

# Adiciona uma coluna a tabela recém criada
ALTER TABLE cursos
ADD COLUMN idcurso int FIRST;

# Torna o campo recém criado uma chave primária
ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

# Comando que exibe a nova estrutura da tabela
DESCRIBE cursos; 