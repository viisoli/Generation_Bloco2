use db_atividade1_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
cpf int (11),
cargo varchar(255) not null,
salario decimal (6,2),
primary key (id)
);
INSERT INTO tb_funcionarios (nome,cpf,cargo,salario) values ("Carls",4002892222,"Desenvolvedora Java Jr",3500.00);
INSERT INTO tb_funcionarios (nome,cpf,cargo,salario) values ("Varls",50040030011,"Assistente I",2300.66);
INSERT INTO tb_funcionarios (nome,cpf,cargo,salario) values ("Darls",55544433322,"Suporte",2500.45);
INSERT INTO tb_funcionarios (nome,cpf,cargo,salario) values ("Larls",11122233344,"Aprendiz",785.99);
INSERT INTO tb_funcionarios (nome,cpf,cargo,salario) values ("Parls",12345678910,"Supervisor de Vendas",3000.36);

alter table tb_funcionarios modify cpf bigint(11);

select nome,cargo,salario from tb_funcionarios where salario>2000.00;
select nome,cargo,salario from tb_funcionarios where salario<2000.00;