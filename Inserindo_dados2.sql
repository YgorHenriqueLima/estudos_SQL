CREATE TABLE IF NOT EXISTS cursos ( /*se a tabela cursos não existe, eu posso criar esta tabela*/
nome varchar(30) NOT NULL UNIQUE, /*vai ser um nome não nulo e único (neste caso ele vai permitir somente um curso com um nome único)*/
descricao text,
carga int unsigned, /*o UNSIGNED vai permitir que não tenha sinais como carga horária de aula negativa */
totaulas int unsigned,
ano year default '2024'
) DEFAULT CHARSET = utf8mb4;

/*ADICIONANDO A CHAVE PRIMÁRIA*/
ALTER TABLE cursos
ADD COLUMN idcurso int FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

describe cursos;

CREATE TABLE IF NOT EXISTS teste(
id int,
nome varchar(10),
idade int
);

INSERT INTO teste VALUE
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');
select * from teste;

drop table if exists teste;