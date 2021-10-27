/*
Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.

Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

-- Data base
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

-- Product's chart 
CREATE TABLE product (

	id bigint auto_increment,
    nameProd varchar(50) not null,
    descriptionProd varchar(250) not null,
    category varchar (50) not null,
    valueProd decimal(8,2) not null,
    star int,
    
    CONSTRAINT id_products_pk primary key (id)
);

-- Insert data on product's chart
INSERT INTO product(nameProd, descriptionProd, category, valueProd, star) 
VALUES ("iPhoneXR Apple", "Smartphone Apple, Iphone iOS, Versão iOS13, Câmera 12MP", "Celular", 4500, 5);
INSERT INTO product(nameProd, descriptionProd, category, valueProd, star) 
VALUES ("Moto g9", "Smartphone Motorola MotoG9, 128GB, 4G, Dual Chip, 4GBRAM, Câmera Quádrupla, Selfie 16MP", "Celular", 1700, 4);
INSERT INTO product(nameProd, descriptionProd, category, valueProd, star) 
VALUES ("Samsung S20", "Smartphone Samsung S20, 128GB 4G, Tela 6.5, Dual Chip, 6GB RAM, Câmera Tripla, Selfie 32MP", "Celular", 2300, 5);
INSERT INTO product(nameProd, descriptionProd, category, valueProd, star) 
VALUES ("Xiaomi M3", "Smartphone Xiaomi Poco M3, Android, 128GB, 4GB Ram, 6.53 Câmera Tripla, Dual Sim", "Celular", 1699, 4);

SELECT id, nameProd "nome Produto", descriptionProd, category, valueProd, star From product;

-- Products over than R$2000
SELECT id, nameProd "nome Produto", descriptionProd, category, valueProd, star From product Where valueProd > 2000;

 -- Products under than R$2000
SELECT id, nameProd "nome Produto", descriptionProd, category, valueProd, star From product Where valueProd < 2000;

-- Update chart's product 
update product set valueProd = 7000 Where id = 3;

SELECT id, nameProd "nome Produto", descriptionProd, category, valueProd, star From product;




