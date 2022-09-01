/*
Atividade 3

Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
CREATE DATABASE dbe_escola;
USE dbe_escola;

create table tb_alunos(
id bigint auto_increment,
nome varchar (255) not null,
 turma varchar (255) not null,
nota decimal (7,2),
primary key  (id)
);
INSERT INTO tb_alunos(nome,turma,nota)
VALUES
("zezinho","5 B",8.9),
("Mariazinha","5 B",10.0),
("joãozinho","5 B",4.5),
("Fabiana","7 A", 0.00),
("juquinha","7 A",8.3),
("pedrinho","8 C",7.75),
("Ana","8 C",8.9),
("Camila","8 C",9.58);

SELECT * FROM tb_alunos;
SELECT * FROM tb_alunos WHERE nota > 7.0;
SELECT * FROM tb_alunos WHERE nota < 7.0;
