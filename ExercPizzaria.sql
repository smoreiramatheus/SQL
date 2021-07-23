create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria
(
	idCategoria int auto_increment,
    precoPizza float,
    precoEsfiha float,
    preçoBebida float,
    primary key (idCategoria)
);

create table tb_pizza
(
	idPizza int auto_increment,
    tipo varchar(255),
    nome varchar(255),
	tamanho varchar(255),
    sabor varchar(255),
	bebida varchar(255),
    fk_categoria int,
    primary key (idPizza),
    foreign key(fk_categoria) references tb_categoria (idCategoria)
);

select * from tb_categoria, tb_pizza;

insert into tb_categoria (precoPizza, precoEsfiha, preçoBebida)
values
(30.00, 1.00, 6.00), 
(50.00, 3.50, 7.00), 
(60.00, 5.50, 5.00), 
(27.50, 2.50, 8.00),  
(45.50, 4.50, 9.00);  

select * from tb_categoria;


insert into tb_pizza (tipo, nome, tamanho, sabor, bebida, fk_categoria)
values
('Pizza', 'Calabresa', 'Médio', 'Salgado', 'Soda',1), 
('Pizza', 'Mussarela', 'Médio', 'Salgado', 'Fanta',2), 
('Esfiha', 'Calabresa', 'Médio', 'Salgado', 'Soda',3), 
('Esfiha', 'Brigadeiro', 'Pequena', 'Doce', 'Soda italiana',1), 
('Pizza', 'Portuguesa', 'Pequena', 'Salgado', 'Fanta Guaraná',3), 
('Esfiha', 'Frango c/ Catupiry', 'Grande', 'Salgado', 'Guaraná',3),
('Pizza', 'Chocolate', 'Grande', 'Doce', 'Vinho',1),
('Esfiha', 'Moda da casa', 'Grande', 'Salgado', 'Coca Cola',2);

select * from tb_pizza;


select * from  tb_categoria where precoPizza > 45.00;
select * from  tb_categoria where precoEsfiha > 45.00;
select * from  tb_categoria where preçoBebida > 45.00;

select * from  tb_categoria where precoPizza > 29.00 and precoPizza < 60.00;
select * from  tb_categoria where precoEsfiha > 29.00 and precoEsfiha < 60.00;
select * from  tb_categoria where preçoBebida > 29.00 and preçoBebida < 60.00;


select * from tb_pizza where nome like '%c%';

select * from db_pizzaria_legal.tb_categoria
inner join db_pizzaria_legal.tb_pizza on tb_pizza.idPizza = tb_categoria.idCategoria;

select nome, tipo, sabor from tb_pizza  where sabor = 'Doce';
