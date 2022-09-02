CREATE DATABASE db_generation_games;

USE db_generation_games;

create table   tb_plataforma(
id bigint auto_increment,
preço decimal (7,2),
plataforma varchar(255),
primary key  (id)

);
INSERT INTO tb_plataforma(preço,plataforma)
VALUES(175.50,"Play Station , Windows"),
(507.99,"Play Station"),
(609.98,"Play Station"),
(0.00,"Todas"),
(150.00,"Todas"),
(247.75,"Todas"),
(745.98,"Todas"),
( 499.58,"Todas");



create table tb_jogos(
id bigint auto_increment,
jogo varchar (255) not null,
categoria varchar (255)not null,
empresa varchar (255) not null,
 classificaçao int,
plataforma_id bigint,
primary key  (id),
foreign key (plataforma_id) references tb_plataforma (id)

);
INSERT INTO tb_jogos(plataforma_id,jogo,categoria,empresa,classificaçao)
VALUES
(1,"Spider-man","aventura","Insomniac Games",12),
(2,"The Last of Us Pt2","Ação","Naughty Dog",18),
(3,"God of War Ragnarok","Aventura","Sony Interactive",18),
(4,"Fortnite","Battle Royale","Epic Games",13),
(5,"NFP","Corrida","Eletronic Arts",14),
(6,"GTA","Açao","Rockstar Games","18"),
(7,"Fifa 23 ","Esporte","EA Games",13),
(8,"Call of Duty Vanguard","Ação","Activision",16);

SELECT * FROM tb_jogos;

SELECT * FROM tb_plataforma;

SELECT * FROM tb_plataforma WHERE preço > 100  ;

SELECT * FROM tb_plataforma  WHERE  PREÇO BETWEEN 0.00 AND 150.00;

SELECT * FROM tb_jogos WHERE jogo LIKE "%A%";

SELECT  jogo,empresa,categoria, tb_plataforma.plataforma,tb_plataforma.preço
FROM tb_plataforma INNER JOIN tb_jogos
ON tb_plataforma.id = tb_jogos.plataforma_id;

SELECT  jogo,empresa,categoria, tb_plataforma.preço
FROM tb_plataforma LEFT JOIN tb_jogos
ON tb_plataforma.id = tb_jogos.plataforma_id;

SELECT  jogo,empresa,categoria, tb_plataforma.preço
FROM tb_plataforma RIGHT JOIN tb_jogos
ON tb_plataforma.id = tb_jogos.plataforma_id;

SELECT  jogo,categoria,preço,tb_plataforma.plataforma 
FROM tb_plataforma INNER JOIN tb_jogos
ON tb_plataforma.id = tb_jogos.plataforma_id
WHERE plataforma = "Play Station";

SELECT  jogo,empresa,preço,tb_plataforma.plataforma 
FROM tb_plataforma INNER JOIN tb_jogos
ON tb_plataforma.id = tb_jogos.plataforma_id
WHERE plataforma like "%Play Station%";