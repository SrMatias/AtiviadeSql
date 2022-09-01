/*Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
CREATE DATABASE dbe_commerce;
USE dbe_commerce;

create table tb_jogos(
id bigint auto_increment,
jogo varchar (255) not null,
categoria varchar (255)not null,
empresa varchar (255) not null,
 classificaçao int,
plataforma varchar (255) not null,
preço decimal (7,2),
primary key  (id)
);
INSERT INTO tb_jogos(jogo,categoria,empresa,classificaçao,plataforma,preço)
VALUES
("Spider-man","aventura","Insomniac Games",12,"Play Station e Windows",175.50),
("The Last of Us Pt2","Ação","Naughty Dog",18,"Play Station",507.99),
("God of War Ragnarok","Aventura","Sony Interactive",18,"Play Station",609.98),
("Fortnite","Battle Royale","Epic Games",13,"Play station,Xbox,Windows,mobile", 0.00),
("NFP","Corrida","Eletronic Arts",14,"Play Station,Xbox,Windows",150.00),
("GTA","Açao","Rockstar Games","18","Todas",247.75),
("Fifa 23 ","Esporte","EA Games",13,"Todas",745.98),
("Call of Duty Vanguard","Ação","",16,"Play station,Xbox,Windows", 499.58);

SELECT * FROM tb_jogos;
SELECT * FROM tb_jogos WHERE preço > 500;
SELECT * FROM tb_jogos WHERE preço < 500;


