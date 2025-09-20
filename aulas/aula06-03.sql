
# Cria uam tabela simples desnormalizada
CREATE TABLE IF NOT EXISTS testedrop (
	id int,
    nome varchar (20),
    idade int
);

# Insere valores na tabela
INSERT INTO testedrop VALUES
	('1', 'Geovane', '36'),
    ('2', 'Giulia', '23'),
    ('3', 'Carla', '17');

# Verifica se os registros foram criados
SELECT * FROM testedrop;

# Exclui toda a tabela
DROP TABLE IF EXISTS testedrop;