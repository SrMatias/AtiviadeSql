CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

create table   tb_classe(
id bigint auto_increment,
pais varchar (255),
tipo varchar(255),
primary key  (id)

);
INSERT INTO tb_classe(pais,tipo)
VALUES("Espanha","Raro"),
("Brasil","Lendario"),
("Inglaterra","Raro"),
("Alemanha","Lendario"),
("Brasil","Comum"),
("Belgica","Raro"),
("USA","Comum"),
( "Brasil","Lendario");



create table tb_personagens(
id bigint auto_increment,
jogador varchar (255) not null,
categoria varchar (255)not null,
ataque int,
defesa int,
classe_id bigint,
primary key  (id),
foreign key (classe_id) references tb_classe (id)

);
INSERT INTO tb_personagens(classe_id,jogador,categoria,ataque,defesa)
VALUES
(1,"Sergio Ramos","Zagueiro",6900,8500),
(2,"Ronaldinho","Meia",9400,4100),
(3,"Harry Kane","Atacante",8900,3600),
(4,"Oliver Khan","Goleiro",2000,9200),
(5,"Matheus Vital","Meia",4000,3000),
(6,"Romelu Lukaku","Atacante",8600,4100),
(7,"Tyler Adams","Meia",3900,2000),
(8,"Ronaldo","Atacante",9500,4900);

SELECT * FROM tb_personagens;

SELECT * FROM tb_classe;

SELECT * FROM tb_personagens WHERE ataque > 2000  ;

SELECT * FROM tb_personagens  WHERE  defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE jogador LIKE "%C%";

SELECT  jogador,categoria,ataque,defesa,tb_classe.pais,tb_classe.tipo
FROM tb_classe INNER JOIN tb_personagens
ON tb_classe.id = tb_personagens.classe_id;

SELECT  jogador,categoria, tb_classe.pais
FROM tb_classe LEFT JOIN tb_personagens
ON tb_classe.id = tb_personagens.classe_id;

SELECT  jogador,categoria, tb_classe.tipo
FROM tb_classe RIGHT JOIN tb_personagens
ON tb_classe.id = tb_personagens.classe_id;

SELECT  jogador,tb_classe.tipo, tb_classe.pais
FROM tb_classe INNER JOIN tb_personagens
ON tb_classe.id = tb_personagens.classe_id
WHERE pais = "Brasil";

