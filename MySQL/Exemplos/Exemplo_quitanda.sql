/* boas praticas colocar o "db" e "tb" na frente do nome para indicar o que está criando (ex: db - database ou banco de dados, tb - table ou tabela*/
create database db_quitanda; 

use db_quitanda;

create table tb_produtos(
id bigint auto_increment , /*auto increment - vai ser preenchido automaticamente com um número, sempre adiciona o numero em ordem crescente*/
nome varchar (255) not null,/*varchar = String (255(padrao) - maximo de caracteres) not null - obrigatorio*/
quantidade int,
preco decimal not null,
primary key(id)
);

INSERT INTO tb_produtos (nome,quantidade,preco) values ("pêra",500,2.99); /*comando para inserir dentro da tabela*/

alter table tb_produtos modify preco decimal (6,2);

INSERT INTO tb_produtos (nome,quantidade,preco) values ("tomate",100,8.00);
INSERT INTO tb_produtos (nome,quantidade,preco) values ("maçã",20,5.00);
INSERT INTO tb_produtos (nome,quantidade,preco) values ("laranja",50,10.00);
INSERT INTO tb_produtos (nome,quantidade,preco) values ("banana",200,12.99);

select * from tb_produtos;/*selecionar tudo da tabela de produtos*/
select nome,preco from tb_produtos; /*selecionar produtos especificos*/
select nome,preco from tb_produtos where preco>=5.00; /*selecionar produtos que são maiores que 5 reais*/

update tb_produtos set preco = 6.00 where id =2;/*Atualizar algum item da tabela*/

delete from tb_produtos where id=5;/*deletar informação da tabela*/

alter table tb_produtos add descricao varchar (255);/*inserir uma nova coluna*/

alter table tb_produtos drop descricao;/*apagar uma propriedade da tabela*/