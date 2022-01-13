create database db_atividade2_ecommerce;

use db_atividade2_ecommerce; 
 create table tb_produtos(
 id bigint auto_increment,
 produto varchar (255) not null,
 descricao varchar (255) not null,
 valor decimal (6,2) not null,
 valor_promocao decimal (6,2) not null,
 primary key (id)
 );
 
alter table tb_produtos drop valor_promocao;
alter table tb_produtos add quantidade varchar(255);
alter table tb_produtos modify quantidade bigint (3);

 INSERT INTO tb_produtos (produto,descricao,valor,quantidade) values ("geladeira","geladeira inox, com bebedouro",9888.00,10);
 INSERT INTO tb_produtos (produto,descricao,valor,quantidade) values ("microondas","microondas pequeno, cor: preto",5600.00,20);
 INSERT INTO tb_produtos (produto,descricao,valor,quantidade) values ("guarda-roupa","6 portas com espelho, cor: branco",6000.00,3);
 INSERT INTO tb_produtos (produto,descricao,valor,quantidade) values ("batedeira","kit batedeira rosa",499.00,9);
 INSERT INTO tb_produtos (produto,descricao,valor,quantidade) values ("liquidificador","liquidificador branco",200.00,10);
 INSERT INTO tb_produtos (produto,descricao,valor,quantidade) values ("quadro","quadro para decoração",300.00,25);
 INSERT INTO tb_produtos (produto,descricao,valor,quantidade) values ("armario","armario para cozinha, cor: branco",988.00,12);
 INSERT INTO tb_produtos (produto,descricao,valor,quantidade) values ("penteadeira","penteadeira camarim",1000.00,8);
 
select produto,descricao,valor,quantidade from tb_produtos where valor>500.00;
select produto,descricao,valor,quantidade from tb_produtos where valor<500.00;

update tb_produtos set valor = 4000.00 where id = 2;