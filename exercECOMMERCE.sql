-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
-- informações dos produtos deste ecommerce.

create database ecommerce;
use ecommerce;

-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

create table produtos (
id int not null auto_increment,
nomeProduto varchar(30),
marca varchar(30),
valor float,
descricao varchar(30),
primary key(id)
)default charset = utf8;

-- Popule esta tabela com até 8 dados;
insert into produtos values
(default,'camisa','Dudalina','200.00', 'camisa branca'),
(default,'calça','Ecko','300.00', 'calça jeans'),
(default,'saia','Hang Lose','400.00', 'saia longa'),
(default,'blusa','Colcci','500.00', 'blusa regata'),
(default,'bermuda','Lacoste','600.00', 'bermuda camuflada'),
(default,'casaco','Adidas','250.00', 'camurça preta'),
(default,'jaqueta','Nike','700.00', 'jaqueta esportiva'),
(default,'tenis','New Era','330.00', 'tenis cano alto');

select * from produtos;

-- Faça um select que retorne os produtos com o valor maior do que 500.

select * from produtos where valor > 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.

select * from produtos where valor < 500;

-- Ao término atualize um dado desta tabela através de uma query de atualização.

update produtos set marca = 'Hering' where id = '1';
select * from produtos;

-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.
