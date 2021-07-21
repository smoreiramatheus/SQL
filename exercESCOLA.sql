-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
-- informações dos estudantes deste registro dessa escola.

create database Escola;
use Escola;

-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola.

create table aluno (
id int not null auto_increment,
nomeAluno varchar(50),
documento varchar(30),
situacao varchar(20),
nota float,
primary key(id)
)default charset = utf8;


-- Popule esta tabela com até 8 dados;

insert into aluno values
(default,'Paula Rodrigues','12345678-9','APROVADE', '7.5'),
(default,'Guilherme Pereira','98765432-1','RECUPERAÇAO', '4.0'),
(default,'Gustavo Costa','11223344-5','APROVADE', '8.4'),
(default,'Regina Vincente','55443322-1','REPROVADE', '3.4'),
(default,'Carol Moreira','99988877-6','APROVADE', '9.9'),
(default,'Maria Bernardes','55588667-6','REPROVADE', '2.5'),
(default,'Lalita Rodrigues','00000001-1','RECUPERAÇAO', '6.5'),
(default,'Bia Nanquin','00000652-5','RECUPERAÇAO', '5.8');

select * from aluno;

-- Faça um select que retorne o/as estudantes com a nota maior do que 7.

select * from aluno where nota > 7;


-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
select * from aluno where nota < 7;

-- Ao término atualize um dado desta tabela através de uma query de atualização.

update aluno set situacao = 'REPROVADE' where id = '2';
select * from aluno;

-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.