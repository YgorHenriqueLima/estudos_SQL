/*AGRUPANDO REGISTROS*/
SELECT totaulas, count(*) from cursos
GROUP BY totaulas
ORDER BY totaulas;

/*AGRUPANDO E AGREGANDO*/
SELECT carga, totaulas, count(nome) FROM cursos WHERE totaulas = 30
group by carga;

SELECT * FROM cursos WHERE totaulas = 30;

SELECT ano, count(*) FROM cursos
WHERE totaulas > 20
group by ano
HAVING ANO > 2016
order by count(*) desc;
/*HAVING = SOMENTE QUEM TEM...*/

SELECT avg(carga) from cursos;

SELECT carga, count(*) from cursos
WHERE ano > 2015
group by carga 
having carga > (SELECT avg(carga) from cursos
);

