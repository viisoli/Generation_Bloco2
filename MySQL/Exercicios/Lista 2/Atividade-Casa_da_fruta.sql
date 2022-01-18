create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255),
ativo boolean not null,
primary key (id));

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
quantidade bigint not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id));

alter table tb_produto modify preco decimal (6,2);

insert into tb_categoria (descricao, ativo) values ("Fruta",true);
insert into tb_categoria (descricao, ativo) values ("Vegetal",true);
insert into tb_categoria (descricao, ativo) values ("Verdura",true);
insert into tb_categoria (descricao, ativo) values ("Folha",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);
insert into tb_categoria (descricao, ativo) values ("Legumes",true);

insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Maça", 4.80,100,1); 
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Alface", 2.86 ,30 ,4); 
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Batata", 2.97 ,60,6); 
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Uva", 7.00,12,1); 
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Brócolis", 6.40,20,6); 
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Cenoura", 3.80,55,6); 
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Pimentão", 5.50,100,6); 
insert into tb_produto (nome, preco, quantidade, categoria_id) values ("Pepino", 3.96,85,1); 

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 6;