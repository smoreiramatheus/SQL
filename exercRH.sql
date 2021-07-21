
-- Exercício 1

-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
-- trabalhará com as informações dos funcionaries desta empresa.

create database RH;
use RH;

-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
create table funcionarios (
id int not null auto_increment,
nome varchar(30),
idade int,
cargo varchar(30),
salario float,
nacionalidade varchar(10),
primary key(id)
)default charset = utf8;

describe funcionarios;
-- Popule esta tabela com até 5 dados;
insert into funcionarios values
(default,'Daniel','20','GestorCom', '8000.00','Brasil'),
(default,'Matheus','26','CientDados', '1200.00','Senegal'),
(default,'Fernanda','24','Advogada', '1200.00','Paris'),
(default,'Amanda','26','DesenvSr.', '12000.00','Grécia'),
(default,'Maicol','25','ConsFinanc', '9000.00','Brasil');

select * from funcionarios;

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
select * from funcionarios where salario > 2000;

--Faça um select que retorne os funcionaries com o salário menor do que 2000.
select * from funcionarios where salario < 2000;


-- Ao término atualize um dado desta tabela através de uma query de atualização.

update funcionarios set nacionalidade = 'Japão' where id = '5';
select * from funcionarios;

salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.

