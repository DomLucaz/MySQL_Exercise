/*Atividade de banco de dados relacional Mysql.

Atividade 1

Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionaries desta empresa. 
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados; 
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.

Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade. */


-- Data base
CREATE DATABASE db_employee;
USE db_employee;

-- employee's chart
CREATE TABLE employee (

		idEmplo bigint auto_increment,
        nameEmplo varchar(250) not null,
        roleEmplo varchar(250) not null,
        age int not null,
        salary decimal (8,2) not null,
        
        CONSTRAINT id_employee primary key(idEmplo)
        
);

-- Insert data on employee's chart
INSERT INTO employee(nameEmplo, roleEmplo, age, salary) VALUES ("Gabriel Mendes", "Dev. Junior", 19, 2500);
INSERT INTO employee(nameEmplo, roleEmplo, age, salary) VALUES ("Maria Carolina", "Dev. Junior", 26, 2750);
INSERT INTO employee(nameEmplo, roleEmplo, age, salary) VALUES ("Jeffrey Rodrigues", "Dev. Junior", 29, 2500);
INSERT INTO employee(nameEmplo, roleEmplo, age, salary) VALUES ("Carlos Botelho", "Dev. Junior", 20, 2500);
INSERT INTO employee(nameEmplo, roleEmplo, age, salary) VALUES ("Lucas Figueiredo", "Country Manager", 28, 32000);

SELECT * FROM employee;

-- Employee over than R$2750
SELECT nameEmplo "Funcionário", roleEmplo "Cargo", salary from employee WHERE salary > 2749;
;

-- Employee under than R$2750
SELECT nameEmplo "Funcionário", roleEmplo "Cargo", salary from employee WHERE salary < 2750;

-- Update chart's data
UPDATE employee SET roleEmplo = "Software Engeneer", salary = 16000 WHERE nameEmplo LIKE 'Carlos Botelho';
 
SELECT * FROM employee;


       