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

insert into tb_categoria (descricao, ativo) values ("Fruta",true);
insert into tb_categoria (descricao, ativo) values ("Vegetal",true);
insert into tb_categoria (descricao, ativo) values ("Verdura",true);
insert into tb_categoria (descricao, ativo) values ("Folha",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

delete from tb_categoria where id=8;