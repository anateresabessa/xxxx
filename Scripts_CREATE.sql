--CREATE DATABASE AgenciaViagens;
--GO

--USE [AgenciaViagens];
--GO

--CREATE TABLE RegistoViagem(
--	ID_VIAGEM INT PRIMARY KEY NOT NULL, 
--	ID_DESTINO INT NOT NULL, 
--	DAT DATE NOT NULL, 
--  DAT_PAGAMENTO DATE NOT NULL,
--	HORA_PARTIDA_PREV TIME NOT NULL, 
--	HORA_PARTIDA_REAL TIME NOT NULL, 
--	HORA_CHEGADA_PREV TIME NOT NULL, 
--	HORA_CHEGADA_REAL TIME NOT NULL,
--	PRECO_VIAGEM INT NOT NULL, 
--	PRECO_PROMOCAO INT NOT NULL);
--GO

--INSERT INTO [dbo].[RegistoViagem] (ID_VIAGEM, ID_DESTINO, DAT, DAT_PAGAMENTO, HORA_PARTIDA_PREV, HORA_PARTIDA_REAL, HORA_CHEGADA_PREV, HORA_CHEGADA_REAL, PRECO_VIAGEM, PRECO_PROMOCAO)  
--    VALUES (00035, 3257, '2017-10-20', '2016-09-02', '23:55:00', '23:59:00',' 00:55:00', '01:00:00', 84, 84),
--			(30270, 4523, '2018-05-02', '2018-01-19', '09:20:00', '10:10:00', '18:40:00', '20:02:00', 250, 220),
--			(33321, 7454, '2019-09-15', '2019-04-24', '15:00:00', '15:01:00', '19:20:00', '19:25:00', 326, 326),
--			(44255, 5233, '2018-08-31', '2018-01-27', '20:35:00', '20:43:00', '03:50:00', '04:08:00', 181, 181),
--			(78527, 6587, '2019-12-21', '2019-01-08', '03:44:00', '05:05:00', '13:30:00', '15:52:00', 225, 190)
--GO

--CREATE TABLE Altura(
--	ID INT PRIMARY KEY,
--	EPOCA TEXT NOT NULL,
--	DESCRICAO TEXT NOT NULL);
--GO

--INSERT INTO [dbo].[Altura] (ID, EPOCA, DESCRICAO)  
--    VALUES (00035, 'Outono', 'Outubro'),
--			(30270, 'Primavera', 'Maio'),
--			(33321, 'Verão', 'Setembro'),
--			(44255, 'Verão', 'Agosto'),
--			(78527, 'Natal', 'Dezembro')  
--GO


--CREATE TABLE Elemento(
--	ID_VIAGEM INT,
--	CC_CLIENTE INT PRIMARY KEY,
--	CC_CLIENTE_PAGADOR INT NOT NULL);
--GO

--INSERT INTO [dbo].[Elemento] (ID_VIAGEM, CC_CLIENTE, CC_CLIENTE_PAGADOR)  
--    VALUES (44255, 77856750, 77856750),
--			(78527, 22300547, 77856750),
--			(30270, 23354711, 23354711),
--			(33321, 44255638, 44255638),
--			(00035, 88965744, 88965744)  
--GO

--CREATE TABLE Cliente(
--	CC BIGINT PRIMARY KEY,
--	PRIMEIRO_NOME TEXT NOT NULL,
--	ULTIMO_NOME TEXT NOT NULL,
--	NOME_MEIO TEXT NOT NULL,
--	PROFISSAO TEXT NOT NULL,
--	EMAIL VARCHAR(40) UNIQUE,
--	NUM_TELEMOVEL BIGINT UNIQUE,
--	LOCALIDADE VARCHAR(20) NOT NULL,
--	RUA VARCHAR(40) NOT NULL,
--	CODIGO_POSTAL VARCHAR(8) NOT NULL,
--	PAIS TEXT NOT NULL);
--GO

--INSERT INTO [dbo].[Cliente] (CC, PRIMEIRO_NOME, ULTIMO_NOME, NOME_MEIO, PROFISSAO, EMAIL, NUM_TELEMOVEL, LOCALIDADE, RUA, CODIGO_POSTAL, PAIS)
--	VALUES (44255638, 'André', 'Moreira', 'Silva', 'Programador', 'andrremorreirra@gmail.com', 6335874110, 'Leon', 'Rue Napoleón', '4521-988', 'França'),
--			(77856750, 'Renato', 'Silva', 'Almeida', 'Programador', 'renato_luis@hotmail.com', 267752336, 'Santiago', 'Terra Branca', '2324-122', 'Cabo Verde'),
--			(22300547, 'Hugo', 'Rodrigues', 'Fortes', 'Governador', 'joséfortes@sapo.pt', 233368820, 'São Vicente', 'Chã da Marinha', '3255-785', 'Cabo Verde'),
--			(88965744, 'Claúdia', 'Pacheco', 'Camelo', 'Editora', 'claudiamc_pacheco@gmail.com', 910023599, 'Porto', 'Rua Jaime Brasil', '4233-223', 'Portugal'),
--			(23354711, 'Almira', 'Santos', 'Coelho', 'Engenheira', 'almira.coelho4@hotmail.com', 933556870, 'Portimão', 'Travessa dos Perdidos', '2331-023', 'Portugal')
--GO

--CREATE TABLE Pais(
--	ID_LOCALIDADE INT PRIMARY KEY,
--	NOME TEXT NOT NULL,
--	PAIS TEXT NOT NULL);
--GO

--INSERT INTO [dbo].[Pais] (ID_LOCALIDADE, NOME, PAIS)  
--    VALUES (2335, 'Madrid', 'Espanha'),
--			(3367, 'Oslo', 'Dinamarca'),
--			(6325, 'Budapeste', 'Hungria'),
--			(4445, 'Moscovo', 'Rússia'),
--			(8820, 'Xangai', 'China')
--GO

--CREATE TABLE Destino(
--	ID INT PRIMARY KEY,
--	LOCAL_TURISTICO TEXT NOT NULL,
--	ID_LOCALIDADE INT NOT NULL,
--	ID_TIPO INT NOT NULL);
--GO

--INSERT INTO [dbo].[Destino] (ID, LOCAL_TURISTICO, ID_LOCALIDADE, ID_TIPO)  
--    VALUES (7454, 'Budapeste', 6325, 3473),
--			(6587, 'Oslo', 3367, 1235),
--			(4523, 'Xangai', 8820, 5750),
--			(3257, 'Madrid', 2335, 4569),
--			(5233, 'Moscovo', 4445, 3025)
--GO


--CREATE TABLE Tipo_Destino(
--	ID INT PRIMARY KEY,
--	NOME TEXT NOT NULL,
--	DESCRICAO TEXT NOT NULL);
--GO

--INSERT INTO [dbo].[Tipo_Destino] (ID, NOME, DESCRICAO)  
--    VALUES (1235, 'Áreas Verdes', 'Predomínio de vegetação em meio urbano; Zonas de recreio e lazer; Contribuem para a absorção da água da chuva'),
--			(3473, 'Montanhoso', 'Elevação no relevo com uma altura de 300m ou mais em relação à área ao seu redor; Com muita humidade e temperaturas muito baixas'),
--			(4569, 'Urbano', 'Região ds cidade, definido como o conjunto que integra e sobrepõe as diferentes atividades; Considerado como o território das práticas políticas, o local da produção e reprodução da sociedade'),
--			(5750, 'Praia', 'Zona à beira-mar onde é possível tomar banhos de sol e de mar.'),
--			(3025, 'Neve', ' Zona de corrência meteorológica que consiste na precipitação de flocos formados por cristais de gelo; Frio intenso')
--GO







