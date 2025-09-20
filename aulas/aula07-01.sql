
# Exibe a estrutura da tabela cursos
DESC cursos;

# Insere registros na tabela cursos
INSERT INTO cursos VALUES
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC','10','8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução á Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Bancos de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateada', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer kibes', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

# Verifica os registros criados
SELECT * FROM cursos;

# Atualiza o campo de um registro com base numa condição
UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

# Atualiza dois campos de um registro com base numa condição
UPDATE cursos
SET 
	nome = 'PHP',
    ano = '2015'
WHERE idcurso = '4';

# Atualiza três campos de um registro com base numa condição
# Utiiza a constraint LIMIT no final, especificando a quantidade máxima de linhas que podem ser afetadas
UPDATE cursos
SET 
	nome = 'Java',
    ano = '2015',
    carga = '10'
WHERE idcurso = '5'
LIMIT 1;