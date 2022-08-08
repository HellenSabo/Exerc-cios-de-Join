CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE categorias(
  categID INT AUTO_INCREMENT,
  tamanho VARCHAR(255),
  tipo VARCHAR(255),
  PRIMARY KEY (categID)
);

CREATE TABLE pizzas(
  pizzaID INT AUTO_INCREMENT,
  categID INT,
  sabor VARCHAR(255),
  valor INT,
  peso INT,
  PRIMARY KEY (pizzaID),
  FOREIGN KEY (categID) REFERENCES categorias(categID)
);

INSERT INTO categorias(tamanho, tipo) VALUES ("Broto", "Doce");
INSERT INTO categorias(tamanho, tipo) VALUES ("Média", "Doce");
INSERT INTO categorias(tamanho, tipo) VALUES ("Família", "Salgada");
INSERT INTO categorias(tamanho, tipo) VALUES ("Média", "Salgada");
INSERT INTO categorias(tamanho, tipo) VALUES ("Família", "Doce");

INSERT INTO pizzas(sabor, valor, peso, categID) VALUES ("Chocolate", 42, 100, 1);
INSERT INTO pizzas(sabor, valor, peso, categID) VALUES ("Prestígio", 45, 200, 2);
INSERT INTO pizzas(sabor, valor, peso, categID) VALUES ("Frango e Catupiry", 50, 300, 3);
INSERT INTO pizzas(sabor, valor, peso, categID) VALUES ("Brócolis com Bacon", 55, 400, 4);
INSERT INTO pizzas(sabor, valor, peso, categID) VALUES ("Torta de maçã", 60, 100, 5);
INSERT INTO pizzas(sabor, valor, peso, categID) VALUES ("Morango com Nutella", 70, 600, 4);
INSERT INTO pizzas(sabor, valor, peso, categID) VALUES ("Banana", 30, 700, 3);
INSERT INTO pizzas(sabor, valor, peso, categID) VALUES ("Romeu e Julieta", 20, 800, 2);

SELECT * FROM pizzas WHERE valor > 45;
SELECT * FROM pizzas WHERE valor > 50 AND valor < 100;
SELECT * FROM pizzas WHERE sabor LIKE '%m%';
SELECT * FROM categorias INNER JOIN pizzas ON categorias.categID = pizzas.categID;
SELECT categorias.tipo, pizzas.sabor FROM categorias INNER JOIN pizzas ON categorias.categID = pizzas.categID WHERE categorias.tipo = 'Doce';