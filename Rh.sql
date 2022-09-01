create database db_rh;
/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
Insira nesta tabela no mínimo 5 dados (registros).
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
USE db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar (255) not null,
idade int,
sexo varchar (255) not null,
anos_na_empresa int,
salario decimal (7,2),
primary key  (id)
);

INSERT INTO tb_funcionarios(nome, idade, sexo, anos_na_empresa, salario )
VALUES ("Antonio Da costa Ribeiro", 47,"M",7,4212.00),
		("Mariana Ferrira da Silva ", 24,"F",1,1212.00);

INSERT INTO tb_funcionarios(nome, idade, sexo, anos_na_empresa, salario )
VALUES ("Cida Junqueira Santos", 55,"F",12,6527.74),
		("Patricia Abravanel ", 30,"F",1,2000.50),
		("Paulo de Toledo", 40,"M",3,3212.00);

UPDATE tb_funcionarios SET salario = 2000.50 WHERE id =4 ;

SELECT * FROM tb_funcionarios WHERE salario > 2000;

ALTER TABLE tb_funcionarios MODIFY salario decimal(7, 2);
SELECT *FROM tb_funcionarios WHERE salario <2000;
SELECT * FROM tb_funcionarios;