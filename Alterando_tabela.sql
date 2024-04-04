describe gafanhotos;

/*ADICIONANDO UMA COLUNA NA TABELA PESSOAS*/
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

/*ELIMINANDO UMA COLUNA NA TABELA PESSOAS*/
ALTER TABLE pessoas
DROP COLUMN profissao;

/*ADICIONANDO A COLUNA profissao DEPOIS da coluna nome*/
ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) AFTER nome;

/*ADICIONANDO A COLUNA codigo na PRIMEIRA POSIÇÃO DE COLUNA*/
ALTER TABLE pessoas
ADD COLUMN codigo int FIRST; 

/*MODIFICANDO UMA COLUNA*/
ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20) not null default '';

/*RENOMEANDO O NOME DA COLUNA*/
ALTER TABLE pessoas
CHANGE COLUMN profissao prof varchar(20);

/*RENOMEANDO A TABELA INTEIRA*/
ALTER TABLE pessoas
RENAME TO gafanhotos;

select * from gafanhotos;