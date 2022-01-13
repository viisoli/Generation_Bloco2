create database db_pizzaria_legal;
create table tb_categoria(
id bigint auto_increment,
categoria varchar (255) not null,
tamanho varchar(255),
primary key (id));

create table tb_pizza(
id bigint auto_increment,
pizza varchar(255) not null,
descricao varchar(255),
valor decimal (6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) REFERENCES tb_categoria (id));
use db_pizzaria_legal;
alter table tb_categoria add categoria_id bigint;
alter table tb_categoria drop categoria_id;

