
# Comando que indica o uso da database para novos comandos  
USE cadastro;

# Comando de inserção de dados na tabela sem o uso de constraints
INSERT INTO pessoas (
nome, nascimento, sexo, peso, altura, nacionalidade) 
VALUES
('Ryan', '2002-11-25', 'M', '98.7', '1.85', 'Brasil'),
('Henrique', '2003-07-22', 'M', '78.7', '1.75', 'Brasil');

# Comando de inserção de dados na tabela com o uso de constraints
# Usa a constraint DEFAULT para preenchimento de valores automáticos e padrão
INSERT INTO pessoas (
id, nome, nascimento, sexo, peso, altura, nacionalidade) 
VALUES
(DEFAULT, 'Guilherme', '2004-04-16', 'M', '74.7', '1.72', DEFAULT);

# Comando de inserção de dados simplificado 
# Quando a ordem de inserção for idêntica a ordem dos campos na estrutura da tabela
INSERT INTO pessoas VALUES
(DEFAULT, 'Lucas', '2002-06-09', 'M', '96.7', '1.83', DEFAULT);

# Comando que consulta todos os dados de uma tabela (para verificar a criação dos registros)
SELECT * FROM pessoas;