-- EXEMPLO DE PLANO CARTESIANO

DROP DATABASE BANCO1
CREATE DATABASE BANCO1
GO

USE BANCO1
GO

CREATE TABLE JOGOS 
(
    ID INTEGER,
    NOME VARCHAR(100),
    GENERO VARCHAR(50),
    VALOR DECIMAL(28, 2),
    DATA_INCLUSAO DATETIME,
    DATA_COMPRADO DATETIME,
    DESCRICAO TEXT
)
-- TIPOS DE FORMATO DE DATA
-- DATE = '2021-05-07'
-- DATETIME = '2021-05-07 18:34:00'
-- DATETIMEOFFSET = '2021-05-07 18:34:00.000000 -03:00'

INSERT INTO JOGOS(NOME)
VALUES('PES');

UPDATE JOGOS
SET ID = 1
WHERE NOME = 'PES';

DELETE FROM JOGOS
WHERE ID = 1;

INSERT INTO JOGOS
VALUES(1, 'PES', 'SIMULADOR, ESPORTES', 50.00, GETDATE(), NULL, 'O melhor jogo de futebol.')

INSERT INTO JOGOS
VALUES(2, 'LOL', 'RPG', 200.00, GETDATE(), NULL, 'O jogo mais famoso do mundo.')

CREATE TABLE PARAMETROS_PROJETO
(
    DESCRICAO_PARAMETRO TEXT
)
INSERT INTO PARAMETROS_PROJETO VALUES ('descricao única')

SELECT
    *
FROM
    JOGOS
    , PARAMETROS_PROJETO

-- [
--     ID, NOME, GENERO, VALOR, DATA_INC, DATA_COMP
--     ID, NOME, GENERO, VALOR, DATA_INC, DATA_COMP
-- ]
-- x
-- [
--     DESCRICAO_PARAMETRO
-- ]
-- =
-- [
--     ID, NOME, GENERO, VALOR, DATA_INC, DATA_COMP, DESCRICAO_PARAMETRO
--     ID, NOME, GENERO, VALOR, DATA_INC, DATA_COMP, DESCRICAO_PARAMETRO
-- ]