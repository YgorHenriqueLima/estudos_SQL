INSERT INTO cursos VALUES
/*linha errada*/
('1', 'HTML5', 'Curso de HTML5','40','37','2014'),
/*---------------------*/
('2', 'Algoritmos', 'Lógica de Programação','20','15','2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC','10','8','2014'),
/*linha errada*/
('4', 'PGP', 'Curso de PHP para iniciantes','40','20','2010'),
('5', 'Jarva', 'Introdução a linguagem Java','10','29','2000'),
/*------------*/
('6', 'MySQL', 'Banco de Dados MySQL','30','15','2016'),
('7', 'Word', 'Curso completo de Word','40','30','2016'),
('8', 'Sapateado', 'Danças Ritmicas','40','30','2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe','40','30','2018'),
('10', 'Youtuber', 'gerar polêmica e ganhar inscritos', '5', '2', '2018');

/*MODIFICANDO LINHAS INCORRETAS*/
UPDATE cursos
SET nome = 'HTML5'
WHERE idcurso = '1';

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET nome = 'Java', carga = '40', ano = '2015'
WHERE idcurso = '5'
/*caso eu modifique sem querer várias linhas , o LIMIT ele limita quantas linhas podem ser afetadas*/
LIMIT 1;

UPDATE cursos
SET ano = '2018', carga = '0' 
WHERE ano = '2050';
select * from cursos;

/*REMOVENDO LINHAS*/
DELETE FROM cursos
WHERE ano = '2014'
limit 1;

/*APAGAR TODOS OS REGISTROS DA LINHAS*/
TRUNCATE cursos;