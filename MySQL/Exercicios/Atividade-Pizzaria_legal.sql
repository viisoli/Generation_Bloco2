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

insert into tb_categoria (categoria,tamanho) values ("doce","4 pedaços");
insert into tb_categoria (categoria,tamanho) values ("doce","8 pedaços");
insert into tb_categoria (categoria,tamanho) values ("salgada","4 pedaços");
insert into tb_categoria (categoria,tamanho) values ("salgada","8 pedaços");

insert into tb_pizza (pizza,descricao,valor,categoria_id) values ("mussarela","queijo mussarela, azeitona e orégano",39.00,4);
insert into tb_pizza (pizza,descricao,valor,categoria_id) values ("mussarela","queijo mussarela, azeitona e orégano",24.50,3);
insert into tb_pizza (pizza,descricao,valor,categoria_id) values ("nutella","nutela com morangos",42.30,2);
insert into tb_pizza (pizza,descricao,valor,categoria_id) values ("nutella","nutela com morangos",30.00,1);
insert into tb_pizza (pizza,descricao,valor,categoria_id) values ("caipira","frango desfiado, catupiry e milho verde",39.00,4);
insert into tb_pizza (pizza,descricao,valor,categoria_id) values ("caipira","frango desfiado, catupiry e milho verde",24.00,3);
insert into tb_pizza (pizza,descricao,valor,categoria_id) values ("banana","banana com chocolate",42.30,2);
insert into tb_pizza (pizza,descricao,valor,categoria_id) values ("banana","banana com chocolate",30.00,1);

select * from tb_pizza where valor>45.00;
select * from tb_pizza where valor between 29.00 and 60.00;
select * from tb_pizza where pizza like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
