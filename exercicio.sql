SELECT * FROM gafanhotos;
/*1) uma lista com o nome de todas as gafanhotas*/
SELECT nome, sexo FROM gafanhotos WHERE sexo = 'F';

/*2) uma lista com os dados de todos aqueles que nasceram entre 1/Jan/2000 e 31/dez/2015*/
SELECT * FROM gafanhotos
WHERE nascimento BETWEEN '2000-01-01' and '2015-12-31';

/*3) uma lista com o nome de todos os homens que trabalham como programador*/
SELECT * FROM gafanhotos
WHERE profissao = 'programador';

/*4) Uma lista de todos as mulheres que nasceram no brasil e que têm seu nome iniciado com a letra J*/
SELECT * FROM gafanhotos WHERE nome LIKE 'J%' and nacionalidade = 'Brasil' and sexo = 'f';

/*5)Uma lista com o nome e nacionalidade de todos os homens que têm silva no nome, não nasceram no Brasil e pesam menos de 100kg*/
SELECT nome, nacionalidade, peso from gafanhotos 
where nome LIKE '%silva%' and sexo = 'M' and nacionalidade != 'brasil' and peso < 100; 

/*6) qual é a maior altura entre os gafanhotos homens que moram no Brasil*/
SELECT nome, sexo, nacionalidade, max(altura) FROM gafanhotos WHERE sexo = 'M' and nacionalidade = 'Brasil';
 
 /*7)qual é a média de peso cadastrado*/
 SELECT AVG(peso) FROM gafanhotos;
 
 /*8) qual é o menor peso entre as Gafanhotas mulheres que nasceram fora do brasil e entre 01/01/1990 e 31/12/2000*/
 SELECT min(peso), nome FROM gafanhotos 
 WHERE nacionalidade != 'Brasil' and sexo = 'F' and nascimento BETWEEN '1990-01-01' and '2000-12-31';
 
 /*quantas GAFANHOTAS mulheres têm mais de 1.90m de altura*/
 SELECT count(altura) from gafanhotos
 WHERE sexo = 'F' and altura > 1.90; 
 