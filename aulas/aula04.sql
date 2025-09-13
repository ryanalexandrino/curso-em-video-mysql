
# Apaga a database criada na aula anterior
DROP DATABASE cadastro;

# Cria novamente a database, com definição de caracteres padrão utf8
CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8mb3
DEFAULT COLLATE utf8mb3_general_ci;

# Altera a tabela cadastro para otimizar sua estrutura
# Para isso, usa tipos primitivo mais adequados e constraints
CREATE TABLE pessoas (
	nome varchar (60) NOT NULL,
    nascimento date,
    sexo ENUM('M','F'),
    peso decimal(5,2),
    altura decimal(3,2),
    nacionalidade varchar(20) DEFAULT 'Brasil'
) DEFAULT CHARSET = utf8mb3;