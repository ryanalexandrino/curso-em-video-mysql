
# Comando que exibe a estrutura da tabela
DESCRIBE pessoas;

# Altera a estrutrura da tabela, adicionando uma coluna
# Por padrão essa coluna é adicionado ao final, como último campo
ALTER TABLE pessoas
ADD COLUMN profissao varchar (10);

# Altera a estrutrura da tabela, excluindo uma coluna 
ALTER TABLE pessoas
DROP COLUMN profissao;

# Altera a estrutrura da tabela, adicionando uma coluna após outra coluna especificada
# Para isso usamos a constraint "AFTER"
ALTER TABLE pessoas
ADD COLUMN profissao varchar (10) AFTER nome;

# Altera a estrutrura da tabela, adicionando uma coluna como primeira coluna
# Para isso usamos a constraint "FIRST"
ALTER TABLE pessoas
ADD COLUMN codigo int FIRST;

# Modifica o tipo primitivo e as constraints de um campo da tabela
# É possível fazer isso através do comando "MODIFY"
ALTER TABLE pessoas
MODIFY COLUMN profissao varchar (20);

# Muda o nome de um campo
# Para isso usamos o comadno "CHANGE"
ALTER TABLE pessoas
CHANGE COLUMN profissao prof varchar(20);

# Altera o nome de toda a tabela
ALTER TABLE pessoas
RENAME TO alunos;

# Comando que exibe a nova estrutura da tabela
DESCRIBE alunos;
