/* ALTER TABLE */

-- CRIA A BASE
CREATE DATABASE AulaAlterTbl;

-- CRIA A TABLEA
CREATE Table YoutubeSimples
(
	Id INT PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL UNIQUE,
	Categoria VARCHAR(100) NOT NULL,
	DataCriacao DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ADICIONA UMA COLUNA NOVA
ALTER TABLE YoutubeSimples 
ADD NumInscritos INT NOT NULL DEFAULT 0;

-- RENOMEAR UMA COLUNA, USAMOS UMA SP
EXEC sp_rename 'YoutubeSimples.NumInscritos', 'QtdeInscritos';

SELECT *
from YoutubeSimples ys 

-- RENOMEAR UMA TABELA
EXEC sp_rename 'YoutubeSimples', 'YouBugSimplificado';

EXEC sp_columns YouBugSimplificado;


-- DESAFIO
/*
 * CRIE UMA TABELA NOVA COM TRÊS COLUNAS;
 * ALTERE O TIPO DE UMA COLUNA;
 * RENOMEAR O NOME DE UMA COLUNA;
 * RENOMEAR O NOME DA TABELA CRIADA. 
 */

-- CRIANDO A TABELA
CREATE TABLE Funcionarios
(
	CodigoServidor INT PRIMARY KEY,
	Salario FLOAT NOT NULL,
	Setor VARCHAR(50)
);

-- ALTERANDO O TIPO DE UMA COLUNA
ALTER TABLE Funcionarios 
ALTER COLUMN Salario NUMERIC(10, 2);

-- ALTERANDO O NOME DE UMA COLUNA
EXEC sp_rename 'Funcionarios.Setor', 'Departamento';

-- RENOMEANDO A TABELA
EXEC sp_rename 'Funcionarios', 'Empregados';
