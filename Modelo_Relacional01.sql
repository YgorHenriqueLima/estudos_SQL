use cadastro;
describe pessoas;
describe cursos;

alter table pessoas add column cursopreferido int;

alter table pessoas 
add foreign key (cursopreferido)
references cursos(idcurso);

select * from pessoas;
select * from cursos;

update pessoas set cursopreferido = '6' where id = '1';


select * from pessoas;
select * from cursos;

select nome, cursopreferido from pessoas;

select nome, ano from cursos;

select pessoas.nome, cursos.nome, cursos.ano 
from pessoas left join cursos ON cursos.idcurso = pessoas.cursopreferido;