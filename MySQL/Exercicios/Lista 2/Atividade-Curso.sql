create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(20) not null,
vagas int not null,
primary key (id)
);

INSERT INTO tb_categoria (tipo, vagas) VALUES ("EAD",60);
INSERT INTO tb_categoria (tipo, vagas) VALUES ("Presencial", 45);

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
nome varchar (255) not null,
Inicio date,
Fim date,
precoM decimal(6,2) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_curso (nome, Inicio, Fim, precoM, categoria_id) VALUES ("Curso Intensivo Inglês", "2022-02-07", "2022-07-28", 150.00,1);
INSERT INTO tb_curso (nome, Inicio, Fim, precoM, categoria_id) VALUES ("Curso JAVA", "2022-03-01", "2022-08-20", 90.00,1);
INSERT INTO tb_curso (nome, Inicio, Fim, precoM, categoria_id) VALUES ("Curso Empregabilidade", "2022-01-10", "2022-06-30", 75.00,2);
INSERT INTO tb_curso (nome, Inicio, Fim, precoM, categoria_id) VALUES ("Curso Informática", "2022-07-15", "2022-12-10", 60.00,2);

select * from tb_curso;

select * from tb_curso where precoM > 50;

select * from tb_curso where precoM between 3 and 60;

select * from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_categoria.id = 1;