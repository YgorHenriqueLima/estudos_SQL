/*ORDENAÇÃO CRESCENTE*/
select * from cursos
order by nome asc; /*você pode colocar se quiser o asc*/

/*ORDENAÇÃO DECRESCENTE*/
select * from cursos
order by nome desc;
/*esse desc não é de describe, mas tem haver com decrescente*/

/*SELECIONANDO COLUNAS*/
SELECT nome, carga, ano from cursos
ORDER BY ano, nome;

/*SELECIONANDO LINHAS*/
SELECT * FROM cursos
WHERE ano = "2016"
order by nome;

SELECT nome, carga FROM cursos
WHERE ano = "2016"
order by nome;

/*utilizando OPERADORES*/
SELECT nome, descricao, ano FROM cursos
WHERE ano <= 2015
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano >= 2016
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano != /*ou <>*/ 2016
ORDER BY ano, nome;

/*SELECIONANDO INTERVALOS*/
SELECT nome, ano FROM cursos
WHERE ano BETWEEN 2014 and 2016
ORDER BY ano desc, nome;
/*BETWEEN é entre um intervalo e(and) outro*/


SELECT nome, descricao, ano FROM cursos
WHERE ano IN(2014,2016)
ORDER BY ano;

/*COMBINANDO TESTES*/
SELECT nome, carga, totaulas from cursos
WHERE carga > 15 and totaulas < 30
ORDER BY nome, totaulas;