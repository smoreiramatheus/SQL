create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_Categoria
(
	idcategoria int auto_increment,
    precoProdutos float,
    serviçosFarmaceuticos float,
    farmaciaPopular VARCHAR(255),
    primary key (idcategoria)
);

create table tb_produto
(
	idProduto int auto_increment,
    tipo varchar(255), #antibiótico, genérico, original
    nome varchar(255), 
	estado varchar(255), #solucao, comprimido, aerossol
    fabricante varchar(255),
	produtosAdversos varchar(255), 
    fk_categoria int,
    primary key (idProduto),
    foreign key(fk_categoria) references tb_categoria (idCategoria)
);



insert into tb_Categoria (precoProdutos, serviçosFarmaceuticos, farmaciaPopular)
values
(30.00, 15.00, 'Gratuito'), 
(50.00, 15.00, 'Gratuito'), 
(60.00, 15.00, 'Gratuito'), 
(27.50, 15.00, 'Gratuito'),  
(45.50, 15.00, 'Gratuito');  

select * from tb_Categoria;


insert into tb_produto (tipo, nome, estado, fabricante, produtosAdversos, fk_categoria)
values
('Antibiótico', 'Amoxicilina', 'Comprimido', 'Ache', 'Preservativo',1), 
('Genérico', 'Tylenol', 'Solução', 'Prati', 'Escova Dental',2), 
('Original', 'Viagra', 'Comprimido', 'Eurofarma', 'Gatorade',1), 
('Antibiótico', 'Cefalexina', 'Comprimido', 'Novartis', 'Energético',1), 
('Genérico', 'Paracetamol', 'Solução', 'Sanofi', 'Bolsa térmica',2), 
('Original', 'Aspirina', 'Aerossol', 'Ache', 'Bengala',3),
('Genérico', 'Aciclovir', 'Solução', 'Prati', 'Tala Cervical',3),
('Manipulação', 'Bromoprida ', 'Aerossol', 'Eurofarma', 'Shampoo',3);




select * from  tb_Categoria where precoProdutos > 50.00;


select * from  tb_Categoria where precoProdutos > 3.00 and precoProdutos < 60.00;


select * from tb_produto where nome like '%b%';



select * from db_farmacia_do_bem.tb_Categoria
inner join db_farmacia_do_bem.tb_produto on tb_produto.idProduto = tb_Categoria.idcategoria;

select nome, tipo from tb_produto  where estado = 'Comprimido';