CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE categorias(
  categID INT AUTO_INCREMENT,
  tarja VARCHAR(255),
  tamanho VARCHAR(255),
  PRIMARY KEY (categID)
);

CREATE TABLE produtos(
  produtosID INT AUTO_INCREMENT,
  categID INT,
  nome VARCHAR(255),
  preco INT,
  marca VARCHAR(255),
  qtd INT,
  PRIMARY KEY (produtosID),
  FOREIGN KEY (categID) REFERENCES categorias(categID)
);

INSERT INTO categorias(tarja, tamanho) VALUES ("Preta", "P");
INSERT INTO categorias(tarja, tamanho) VALUES ("Azul", "M");
INSERT INTO categorias(tarja, tamanho) VALUES ("Vermelha", "G");
INSERT INTO categorias(tarja, tamanho) VALUES ("Laranja", "M");
INSERT INTO categorias(tarja, tamanho) VALUES ("Amarela", "P");


INSERT INTO produtos(nome, preco, marca, qtd, categID) VALUES ("Dipirona", 5, "FarMais", 10, 1);
INSERT INTO produtos(nome, preco, marca, qtd, categID) VALUES ("Rivotril", 10, "FarMenos", 20, 2);
INSERT INTO produtos(nome, preco, marca, qtd, categID) VALUES ("venvanse", 25, "DrogaRaia", 30, 3);
INSERT INTO produtos(nome, preco, marca, qtd, categID) VALUES ("Venlift", 55, "DrugDealer", 40, 4);
INSERT INTO produtos(nome, preco, marca, qtd, categID) VALUES ("berotec", 125, "FarMaisOuMenos", 50, 5);
INSERT INTO produtos(nome, preco, marca, qtd, categID) VALUES ("Benzectacil", 52, "SocorroDels", 60, 4);
INSERT INTO produtos(nome, preco, marca, qtd, categID) VALUES ("Ômega 3", 51, "TopTherm", 70, 3);
INSERT INTO produtos(nome, preco, marca, qtd, categID) VALUES ("Chocolate", 10, "Nestlé", 80, 2);

SELECT * FROM produtos WHERE preco > 50;
SELECT * FROM produtos WHERE preco > 5 AND preco < 60;
SELECT * FROM produtos WHERE nome LIKE '%c%';
SELECT * FROM categorias INNER JOIN produtos ON categorias.categID = produtos.categID;
SELECT categorias.tarja, produtos.nome FROM categorias INNER JOIN produtos ON categorias.categID = produtos.categID WHERE categorias.tarja = 'Azul';