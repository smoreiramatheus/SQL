create database generation_game_online;

use generation_game_online;


#Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
#relevantes da classe para se trabalhar com o serviço desse game Online.

create table tb_classe(
idUsuario int not null auto_increment,
modo varchar(255),						-- Campanha ou História ou Online ou Multiplayer
nivel varchar(255),							-- Fácil, Médio ou Difício ou Supreme
servidor varchar(255),						-- Público, Privado
primary key (idUsuario)
);


#Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
#atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
#(não esqueça de criar a foreign key de tb_classe nesta tabela).

USE generation_game_online;

create table generation_game_online.tb_personagem (
idPersonagem int not null auto_increment,
deusMitologico varchar(255),
arma varchar(255),						-- Arqueiro, Escudeiro, Cavaleiro, 
poderAtaque int,
poderDefesa int,
seresMitologicos varchar(255),
primary key(idPersonagem)

);

-- alter table tb_personagem add foreign key (idUsuario) references tb_classe(idUsuario);

desc tb_personagem;
desc tb_classe;

insert into  tb_classe (modo, nivel, servidor)  values ( 'Campanha', 'Hard', 'Publico');
insert into  tb_classe (modo, nivel, servidor)  values ( 'Modo Historia', 'Medio', 'Privado');
insert into  tb_classe (modo, nivel, servidor)  values ( 'Modo Online', 'Easy', 'Publico');
insert into  tb_classe (modo, nivel, servidor)  values ( 'Multiplayer', 'Supreme', 'Privado');
insert into  tb_classe (modo, nivel, servidor)  values ( 'Modo Online', 'Hard', 'Publico');

select * from tb_classe;

insert into  tb_personagem (deusMitologico, arma, poderAtaque, poderDefesa, seresMitologicos)  values ('Poseidon', 'Tridente', 7501, 1999, 'Kraken');
insert into  tb_personagem (deusMitologico, arma, poderAtaque, poderDefesa, seresMitologicos)  values ('Hades', 'Garfo de Hades', 7500, 2000, 'Cerbero');
insert into  tb_personagem (deusMitologico, arma, poderAtaque, poderDefesa, seresMitologicos)  values ('Zeus', 'Raio', 7400, 1600, 'Pegasus');
insert into  tb_personagem (deusMitologico, arma, poderAtaque, poderDefesa, seresMitologicos)  values ('Ares', 'Lança e Escudo', 3000, 1000, 'Corvo');
insert into  tb_personagem (deusMitologico, arma, poderAtaque, poderDefesa, seresMitologicos)  values ('Hermes', 'Botas Aladas', 2500, 900, 'Cajado de Serpente');	
insert into  tb_personagem (deusMitologico, arma, poderAtaque, poderDefesa, seresMitologicos)  values ('Atena', 'Elmo', 1500, 1200, 'Coruja');
insert into  tb_personagem (deusMitologico, arma, poderAtaque, poderDefesa, seresMitologicos)  values ('Apolo', 'Arco e Flecha', 1600, 800, 'Lira');
insert into  tb_personagem (deusMitologico, arma, poderAtaque, poderDefesa, seresMitologicos )  values ('Afrodite', 'Cinturão Mágico', 500, 1700, 'Querubim');

select * from tb_personagem;

alter table tb_personagem
add column fk_classe int;

alter table tb_personagem
add foreign key (fk_classe)
references tb_classe(idUsuario);

desc tb_personagem;

update tb_personagem set fk_classe = '4' where idPersonagem = '1';
update tb_personagem set fk_classe = '4' where idPersonagem = '2';
update tb_personagem set fk_classe = '1' where idPersonagem = '3';
update tb_personagem set fk_classe = '2' where idPersonagem = '4';
update tb_personagem set fk_classe = '3' where idPersonagem = '5';
update tb_personagem set fk_classe = '1' where idPersonagem = '6';
update tb_personagem set fk_classe = '1' where idPersonagem = '7';
update tb_personagem set fk_classe = '3' where idPersonagem = '8';


select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where poderDefesa  > 1000 and poderDefesa < 2000;

select * from tb_personagem where deusMitologico like '%a%';		#Inserimos com a letra A, pois não tinhamos nenhum personagem com a letra C

SELECT * FROM generation_game_online.tb_personagem
INNER join generation_game_online.tb_classe ON tb_classe.idUsuario = tb_personagem.idPersonagem;

select deusMitologico, arma from tb_personagem where arma = 'Raio';
