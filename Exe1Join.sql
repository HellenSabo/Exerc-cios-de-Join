CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
  classeID INT AUTO_INCREMENT,
  nome VARCHAR(255),
  vida VARCHAR(255),
  PRIMARY KEY (classeID)
);

CREATE TABLE IF NOT EXISTS tb_personagens(
  personagemID INT AUTO_INCREMENT,
  classeID INT,
  nome VARCHAR(255),
  ataque INT,
  defesa INT,
  pet VARCHAR(255),
  PRIMARY KEY (personagemID),
  FOREIGN KEY (classeID) REFERENCES tb_classes(classeID)
);

INSERT INTO tb_classes(nome, vida) VALUES ("Paladino", 2000);
INSERT INTO tb_classes(nome, vida) VALUES ("Mago", 3500);
INSERT INTO tb_classes(nome, vida) VALUES ("Ladino", 4000);
INSERT INTO tb_classes(nome, vida) VALUES ("Bárbaro", 2500);
INSERT INTO tb_classes(nome, vida) VALUES ("Espadachim", 1500);


INSERT INTO tb_personagens(nome, ataque, defesa, pet, classeID) VALUES ("Carlos", 200, 200, "Gerion", 1);
INSERT INTO tb_personagens(nome, ataque, defesa, pet, classeID) VALUES ("Lucas", 400, 400, "Valak", 2);
INSERT INTO tb_personagens(nome, ataque, defesa, pet, classeID) VALUES ("Diego", 600, 600, "Paimon", 3);
INSERT INTO tb_personagens(nome, ataque, defesa, pet, classeID) VALUES ("Acauã", 800, 800, "Baal", 4);
INSERT INTO tb_personagens(nome, ataque, defesa, pet, classeID) VALUES ("JP", 1200, 1200, "Lúcifer", 5);
INSERT INTO tb_personagens(nome, ataque, defesa, pet, classeID) VALUES ("Greg", 1600, 1600, "Batibat", 4);
INSERT INTO tb_personagens(nome, ataque, defesa, pet, classeID) VALUES ("Heder", 2200, 2200, "Gitano", 3);
INSERT INTO tb_personagens(nome, ataque, defesa, pet, classeID) VALUES ("Pedro", 2400, 2400, "Cálcio", 2);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';
SELECT * FROM tb_classes INNER JOIN tb_personagens ON tb_classes.classeID = tb_personagens.classeID;
SELECT tb_classes.nome, tb_personagens.nome FROM tb_classes INNER JOIN tb_personagens ON tb_classes.classeID = tb_personagens.classeID WHERE tb_classes.nome = 'Paladino';

