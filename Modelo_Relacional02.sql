CREATE TABLE pessoa_assiste_curso(
id int not null auto_increment,
data date,
idpessoa int,
idcurso int,
primary key(id),
foreign key(idpessoa) references pessoas(id),
foreign key(idcurso) references cursos(idcurso)
)default charset = utf8mb4;

select * from pessoas;
select * from cursos;

insert into pessoa_assiste_curso values
(default, '2014-03-01', '1', '2');

select * from pessoa_assiste_curso;

select p.id, p.nome, c.nome from pessoas as p

join pessoa_assiste_curso as a
on p.id = a.idpessoa

join cursos as c
on c.idcurso = a.idcurso

order by p.nome;