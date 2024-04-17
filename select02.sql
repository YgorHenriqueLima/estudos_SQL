SELECT * FROM cursos;

/*USANDO O OPERADOR LIKE*/
SELECT * FROM cursos
WHERE nome LIKE 'a%';

/*WILDCARDS*/
SELECT * FROM cursos
WHERE nome like 'a%';
/*selecionando a no início*/

SELECT * FROM cursos
WHERE nome like '%a';
/*selecionando a no final*/

SELECT * FROM cursos
WHERE nome LIKE '%a%';
/*selecionando a em qualquer lugar*/

SELECT * FROM cursos
WHERE nome not LIKE '%a%';
/*não selecionando o a*/

SELECT * FROM cursos
WHERE nome LIKE 'ph%p_';
/*qualquer coisa que começa com ph no início e termine com p seguido de alguma coisa_ */

SELECT * FROM cursos
WHERE nome LIKE 'P__t%';

SELECT * FROM gafanhotos
WHERE nome LIKE '%silva';

/*DISTINGUINDO*/
SELECT DISTINCT carga from cursos order by carga;

/*Funções de agregação*/
SELECT count(*) from cursos;
SELECT count(*) from cursos where carga > 40;
SELECT count(nome) from cursos;
/*máximo de campo*/
SELECT max(carga) from cursos;

SELECT * FROM cursos WHERE ano = '2016';
SELECT MAX(totaulas) FROM cursos WHERE ano = '2016';
SELECT nome, MIN(totaulas) FROM cursos WHERE ano = '2016';
SELECT SUM(totaulas) FROM cursos WHERE ano = '2016';
SELECT AVG(totaulas) FROM cursos where ano = '2016';