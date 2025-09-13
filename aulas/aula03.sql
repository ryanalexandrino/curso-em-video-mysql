
CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE pessoas (
	nome varchar(60),
    idade tinyint,
    sexo char(1),
    altura float,
    peso float,
    nacionalidade varchar(20)
);

DESCRIBE pessoas;



