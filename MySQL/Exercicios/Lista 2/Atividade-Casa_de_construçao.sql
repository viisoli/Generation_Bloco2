create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
ativo boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, ativo) VALUES ("Hidráulico", true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Elétrico", true);
INSERT INTO tb_categoria (tipo, ativo) VALUES ("Básico", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome,  preco, qtProduto, categoria_id) VALUES ("Telha", 55.30, 35, 3);
INSERT INTO tb_produtos (nome,  preco, qtProduto, categoria_id) VALUES ("Furadeira", 246.80, 2, 2);
INSERT INTO tb_produtos (nome,  preco, qtProduto, categoria_id) VALUES ("Cano PVC", 24.90, 25, 1);
INSERT INTO tb_produtos (nome,  preco, qtProduto, categoria_id) VALUES ("Lâmpada", 9.90, 11, 3);
INSERT INTO tb_produtos (nome,  preco, qtProduto, categoria_id) VALUES ("Piso", 43.20, 60, 3);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;