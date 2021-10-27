/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes  com a nota maior do que 7.
Faça um select que retorne o/as estudantes  com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

-- Data base
CREATE DATABASE db_school;
USE db_school;
-- Student's chart 

    create table infoStudent(
	id bigint auto_increment,
    nameSt varchar(255) not null,
    email varchar(255) not null,
    birth date not null,
    class varchar(255),
    rate decimal(3,1),
	
    constraint id_infoEstudante_primarykey primary key(id)
);
-- Insert data on student's chart
insert into infoStudent (nameSt, email, birth, class, rate) values ("Lucas Figueiredo", "lucasfigueiredo@gmail.com", "19930101", "2A", 10.0);
insert into infoStudent (nameSt, email, birth, class, rate) values ("Guilherme Fruto", "glouty@gmail.com", "20010123", "1A", 8.8);
insert into infoStudent (nameSt, email, birth, class, rate) values ("Lucas Pereira", "lusca25@outlook.com", "19901203", "2A", 5.5);
insert into infoStudent (nameSt, email, birth, class, rate) values ("Juliano Malaspino", "leblonqlol@gmail.com", "19800712", "3B", 10.0);
insert into infoStudent (nameSt, email, birth, class, rate) values ("Gustavo Raposa", "gandalf@gmail.com", "19950616", "2B", 3.5);
insert into infoStudent (nameSt, email, birth, class, rate) values ("Guilherme Vandergelt", "guifinat@gmail.com", "19541021", "2C", 7.8);
insert into infoStudent (nameSt, email, birth, class, rate) values ("Fabricio Souza", "powah@gmail.com", "19960218", "3A", 4.0);
insert into infoStudent (nameSt, email, birth, class, rate) values ("Arthur Deboni", "reitutao@gmail.com", "19991023", "3A", 8.9);
select * from infoStudent;

-- rate over than 6.0
select * from infoStudent where rate>6.0;

-- rate less than 6.0
select * from infoStudent where rate<6.0;

-- Update chart's student
UPDATE infoStudent SET email = "kyserax@gmail.com" WHERE nameSt LIKE 'Fabricio Souza';

select * from infoStudent;