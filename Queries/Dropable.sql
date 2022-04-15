/* DROP TABLE */

-- SEM MISTÉRIO: DELETA UMA TABELA. 
-- PARA CASOS MAIS ESPECÍFICOS EXISTE O 'TRUNCATE TABLE'
-- ESSE SEGUNDO STATEMENT É ÚTIL QUANDO TEMOS
-- CAMPOS DO TIPO AUTO NUMBER E QUEREMOS 
-- RESETAR O CONTADOR JUNTO A UMA TRIGGER 

-- SINTAXE
DROP TABLE NomeDaTabela;

-- CRIANDO UMA TABELA SIMPLES
CREATE TABLE ExemploDeletar
(
	Idade INT NOT NULL,
	Sexo CHAR(1) NOT NULL
);

-- DROPANDO
DROP TABLE ExemploDeletar;

-- OBS: o truncate, ao em vez de deletar a tabela, apenas deleta os dadoscontidos nas colunas. Ex:

/* DROP TABLE */

-- CRIANDO UMA TABELA SIMPLES
CREATE TABLE ExemploDeletar
(
	Idade INT NOT NULL,
	Sexo CHAR(1) NOT NULL
);

-- DROPANDO
DROP TABLE ExemploDeletar;

-- TABELA E DADOS MANDRACK PARA RODAR O TRUNCATE 
CREATE TABLE Aluno
(
	Nome VARCHAR(100) NOT NULL,
	Serie VARCHAR(50) NOT NULL,
	Bolsista BIT DEFAULT 0
);

INSERT INTO Aluno (Nome, Serie, Bolsista) 
VALUES ('Ray Goodings', 4, 0),
       ('Marris Anders', 11, 1),
       ('Travers Giacobini', 10, 1),
       ('Sutherland Giraudo', 12, 0),
       ('Emalia Popham', 3, 0),
       ('Ellissa Rayne', 5, 1),
       ('Sallie Sidebotton', 12, 1),
       ('Sterling Congdon', 9, 0),
       ('Sadye Schwier', 4, 0),
       ('Zsazsa Crann', 12, 1),
       ('Garek Haddon', 9, 0),
       ('Anastassia Condict', 4, 1),
       ('Jasen Pedlow', 4, 0),
       ('Lona Patillo', 6, 1),
       ('Ame Bankhurst', 1, 1),
       ('Timoteo Dickens', 10, 1),
       ('Tobit Cordeau', 7, 1),
       ('Rhys Read', 12, 0),
       ('Scottie Jowett', 10, 0),
       ('Roseanne Etridge', 2, 0),
       ('Levin Lejeune', 2, 1),
       ('Florencia Kettlewell', 1, 0),
       ('Modestia Mallan', 5, 1),
       ('Tobiah Newsome', 7, 1),
       ('Jessamine Postlewhite', 11, 1),
       ('Kaitlyn Yanov', 3, 0),
       ('Sianna Hradsky', 5, 0),
       ('Gibby Whettleton', 3, 0),
       ('Blaire Hillburn', 6, 1),
       ('Bernardina Brooksbank', 6, 0);

TRUNCATE TABLE Aluno;
