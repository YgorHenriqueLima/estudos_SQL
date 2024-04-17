/*uma lista com as profissões dos gafanhotos e seus respectivos quantitativos*/
select profissao, count(*) from gafanhotos
group by profissao
order by nome;

/*quantos gafanhotos homens e mulheres nasceram após 01/jan/2005*/
SELECT sexo, count(*) from gafanhotos
where nascimento > '2005-01-01'
group by sexo;

/*Uma lista com os gafanhotos que nasceram fora do brasil, mostrando o país de origem e o total de pessoas nascidas lá, só nos interessam os países que tiverem mais de 3 gafanhotos com essa nacionalidade*/
SELECT nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(*) > 3;

/*UMA LISTA AGRUPADA PELA ALTURA DOS GAFANHOTOS, 
MOSTRANDO QUANTAS PESSOAS PESAM MAIS DE 100KG 
E QUE ESTÃO ACIMA DA MÉDIA DE ALTURA DE TODOS OS CADASTRADOS*/
SELECT altura, count(*) from gafanhotos
where peso > 100
GROUP BY altura
having (select avg(altura) from gafanhotos);