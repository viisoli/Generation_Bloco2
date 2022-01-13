create database db_generation_game_online;
use db_generation_game_online;
create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
descricao varchar (255) not null,
primary key (id)
);

create table tb_personagem(
id bigint auto_increment,
personagem varchar (255) not null,
p_ataque bigint (4),
p_defesa bigint (4),
habilidade varchar(255) not null,
classe_id bigint ,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id));

insert into tb_classe (classe,descricao) values ("arqueiro","combate á distância com arco e flecha");
insert into tb_classe (classe,descricao) values ("guerreiro","combate corporal com espadas");
insert into tb_classe (classe,descricao) values ("mago","combate corporal com os punhos");
insert into tb_classe (classe,descricao) values ("lutador","combate á distância");
insert into tb_classe (classe,descricao) values ("pistoleiro","combate á distância com armas de fogo");

insert into tb_personagem (personagem, p_ataque, p_defesa, habilidade, classe_id) values ("Red",3000,2000,"velocidade",5);
insert into tb_personagem (personagem, p_ataque, p_defesa, habilidade, classe_id) values ("Orange",999,4000,"armadura",2);
insert into tb_personagem (personagem, p_ataque, p_defesa, habilidade, classe_id) values ("Yellow",4000,3000,"furtividade",5);
insert into tb_personagem (personagem, p_ataque, p_defesa, habilidade, classe_id) values ("Green",2000,3000,"esquiva",4);
insert into tb_personagem (personagem, p_ataque, p_defesa, habilidade, classe_id) values ("Blue",2000,999,"regeneração",1);
insert into tb_personagem (personagem, p_ataque, p_defesa, habilidade, classe_id) values ("Anil",4000,2000,"escudo",2);
insert into tb_personagem (personagem, p_ataque, p_defesa, habilidade, classe_id) values ("Violet",5000,1000,"camuflagem",3);
insert into tb_personagem (personagem, p_ataque, p_defesa, habilidade, classe_id) values ("Black",3000,2000,"inteligencia",2);

select personagem, p_ataque, p_defesa, habilidade from tb_personagem where p_ataque>2000;
select personagem, p_ataque, p_defesa, habilidade from tb_personagem  where p_defesa between 1000 and 2000;
select * from tb_personagem where personagem like "%c%";

select tb_personagem.personagem, tb_personagem.p_ataque, tb_personagem.p_defesa, tb_personagem.habilidade, tb_classe.classe, tb_classe.descricao from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where classe_id=1;




