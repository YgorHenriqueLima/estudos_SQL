/*para criação de banco de dados com definições e codificações de caracteres acentuados*/
/*CONSTRANTS = REGRAS*/
create database cadastro
default character set utf8
default collate utf8_general_ci;

/*definindo a tabela de pessoas*/
CREATE TABLE pessoas (
`id` int NOT NULL auto_increment,
`nome` varchar(30) NOT NULL, /*not null significa que você vai ser obrigado a preencher os dados, para que não fique nulo */
`nascimento` date,
`sexo` enum("M","F"), /*vai obrigar os dois sexos*/
`peso` decimal(5,2), /*quer dizer que das 5 casas numéricas ao todo, eu temos 3 antes da vírgula e 2 após a vírgula*/
`altura` decimal(3,2),
`nacionalpessoasidade` varchar(20) DEFAULT "Brasil",
PRIMARY KEY(id)
)default charset = utf8;
