CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

create table   tb_categoria(
id bigint auto_increment,
categoria varchar (255),
tamanho varchar(255),
primary key  (id)

);
INSERT INTO tb_categoria(categoria,tamanho)
VALUES("Doce","Grande"),
("Doce","Broto"),
("Doce","Broto"),
("Salgada","Grande"),
("Salgada","Grande"),
("Salgada","Broto"),
("Salgada","Broto"),
("Doce","Broto");



create table tb_pizza(
id bigint auto_increment,
sabor varchar (255) not null,
preço decimal (7,2)not null,
categoria_id bigint,
primary key  (id),
foreign key (categoria_id) references tb_categoria (id)

);
INSERT INTO tb_pizza(categoria_id,sabor,preço)
VALUES
(1,"M&M",54.99),
(2,"Romeu e Julieta",94.99),
(3,"Brigadeiro",34.99),
(4,"Calabresa",34.90),
(5,"Camarão",102.99),
(6,"Portuguesa",65.00),
(7,"Moda Da Casa",54.99),
(8,"Prestigio",49.00);

SELECT * FROM tb_pizza;

SELECT * FROM tb_categoria;

SELECT * FROM tb_pizza WHERE preço > 45.00  ;

SELECT * FROM tb_pizza  WHERE  preço BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizza WHERE sabor LIKE "%M%";

SELECT  sabor,preço,tb_categoria.categoria,tb_categoria.tamanho
FROM tb_categoria INNER JOIN tb_pizza
ON tb_categoria.id = tb_pizza.categoria_id;

SELECT  sabor,preço,tb_categoria.categoria,tb_categoria.tamanho
FROM tb_categoria LEFT JOIN tb_pizza
ON tb_categoria.id = tb_pizza.categoria_id;

SELECT  sabor,preço,tb_categoria.categoria,tb_categoria.tamanho
FROM tb_categoria RIGHT JOIN tb_pizza
ON tb_categoria.id = tb_pizza.categoria_id;

SELECT  sabor,preço,tb_categoria.categoria
FROM tb_categoria INNER JOIN tb_pizza
ON tb_categoria.id = tb_pizza.categoria_id
WHERE categoria = "Doce";



