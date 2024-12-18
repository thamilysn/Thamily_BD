CREATE SCHEMA IF NOT EXISTS estudodecaso2_BD;

USE estudodecaso2_BD;

CREATE TABLE IF NOT EXISTS PASSAGEIROS (
PASS_CPF INT PRIMARY KEY, 
PASS_NOME VARCHAR (100) NOT NULL, 
PASS_TEL VARCHAR (15) NOT NULL,
PASS_EMAIL VARCHAR (100) NOT NULL, 
PASS_CEP VARCHAR (8) NOT NULL,
PASS_NUMRUA VARCHAR(40) NOT NULL,
PASS_RUA VARCHAR (40) NOT NULL,
PASS_BAIRRO VARCHAR (40) NOT NULL, 
PASS_CIDADE VARCHAR (40) NOT NULL, 
PASS_ESTADO VARCHAR (40) NOT NULL, 
PASS_PAIS VARCHAR (40) NOT NULL
);

CREATE TABLE IF NOT EXISTS AEROPORTOS ( 
AEROP_COD INT PRIMARY KEY,
AEROP_NOME VARCHAR (50) NOT NULL, 
AEROP_CIDADE VARCHAR (50) NOT NULL, 
AEROP_PAIS VARCHAR (30) NOT NULL,
AEROP_LATITUDE DECIMAL(9, 6) NOT NULL, 
AEROP_LONGITUDE DECIMAL(9, 6) NOT NULL
);

CREATE TABLE IF NOT EXISTS AERONAVES (
AERON_PREFIXO VARCHAR(10) PRIMARY KEY,
AERON_MODELO VARCHAR (50) NOT NULL,
AERON_ANOFABR YEAR NOT NULL,
AERON_FABRICANTE VARCHAR (50) NOT NULL,
AERON_CAPACIDADE DECIMAL (10, 2) NOT NULL,
AERON_AUTONOMIA VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS FUNCIONARIOS (
FUNC_ID INT PRIMARY KEY,
FUNC_NOME VARCHAR (50) NOT NULL,
FUNC_DATANASC DATE NOT NULL,
FUNC_CEP VARCHAR (11) NOT NULL,
FUNC_RUA VARCHAR (40) NOT NULL,
FUNC_BAIRRO VARCHAR (40) NOT NULL, 
FUNC_CIDADE VARCHAR (40) NOT NULL, 
FUNC_ESTADO VARCHAR (40) NOT NULL, 
FUNC_PAIS VARCHAR (40) NOT NULL,
FUNC_CPF VARCHAR (11) NOT NULL, 
FUNC_FUNCAO TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS VOOS (
VOO_ID INT,
VOO_DATA DATE NOT NULL,
VOO_HORA TIME NOT NULL, 
VOO_AEROP_ORIGEM INT,  
VOO_AEROP_DEST INT,
VOO_AERONAVE VARCHAR(10) NOT NULL,
PRIMARY KEY (VOO_ID, VOO_AEROP_ORIGEM, VOO_AEROP_DEST),
CONSTRAINT FK_VOO_ORIGEM FOREIGN KEY (VOO_AEROP_ORIGEM) REFERENCES AEROPORTOS (AEROP_COD),
CONSTRAINT FK_VOO_DESTINO FOREIGN KEY (VOO_AEROP_DEST) REFERENCES AEROPORTOS (AEROP_COD),
CONSTRAINT FK_VOO_AERONAVE FOREIGN KEY (VOO_AERONAVE) REFERENCES AERONAVES (AERON_PREFIXO)
);

CREATE TABLE IF NOT EXISTS EQUIPES (
VOO_ID INT,                              
FUNC_ID INT,                             
PRIMARY KEY (VOO_ID, FUNC_ID),
CONSTRAINT FK_EQUIPE_VOO FOREIGN KEY (VOO_ID) REFERENCES VOOS(VOO_ID),
CONSTRAINT FK_EQUIPE_FUNC FOREIGN KEY (FUNC_ID) REFERENCES FUNCIONARIOS(FUNC_ID)
);

CREATE TABLE IF NOT EXISTS RESERVAS (
RESERVA_COD INT,
PASS_CPF INT,
VOO_ID INT,
PRIMARY KEY (RESERVA_COD),
CONSTRAINT FK_RESERVA_VOO FOREIGN KEY (VOO_ID) REFERENCES VOOS(VOO_ID),
CONSTRAINT FK_PASS_VOO FOREIGN KEY (PASS_CPF) REFERENCES PASSAGEIROS(PASS_CPF)
);

#1. EXEMPLO DE ALTER TABLE: PASSAGEIROS
ALTER TABLE PASSAGEIROS ADD EXEMPLO_123 TEXT;
ALTER TABLE PASSAGEIROS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE PASSAGEIROS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE PASSAGEIROS DROP COLUMN EXEMPLO_1234;

#2. EXEMPLO DE ALTER TABLE: AEROPORTOS
ALTER TABLE AEROPORTOS ADD EXEMPLO_123 TEXT;
ALTER TABLE AEROPORTOS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE AEROPORTOS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE AEROPORTOS DROP COLUMN EXEMPLO_1234;

#3. EXEMPLO DE ALTER TABLE: AERONAVES
ALTER TABLE AERONAVES ADD EXEMPLO_123 TEXT;
ALTER TABLE AERONAVES MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE AERONAVES CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE AERONAVES DROP COLUMN EXEMPLO_1234;

#4. EXEMPLO DE ALTER TABLE: FUNCIONARIOS
ALTER TABLE FUNCIONARIOS ADD EXEMPLO_123 TEXT;
ALTER TABLE FUNCIONARIOS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE FUNCIONARIOS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE FUNCIONARIOS DROP COLUMN EXEMPLO_1234;

#5. EXEMPLO DE ALTER TABLE: VOOS
ALTER TABLE VOOS ADD EXEMPLO_123 TEXT;
ALTER TABLE VOOS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE VOOS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE VOOS DROP COLUMN EXEMPLO_1234;

#6. EXEMPLO DE ALTER TABLE: EQUIPES
ALTER TABLE EQUIPES ADD EXEMPLO_123 TEXT;
ALTER TABLE EQUIPES MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE EQUIPES CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE EQUIPES DROP COLUMN EXEMPLO_1234;

#7. EXEMPLO DE ALTER TABLE: RESERVAS
ALTER TABLE RESERVAS ADD EXEMPLO_123 TEXT;
ALTER TABLE RESERVAS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE RESERVAS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE RESERVAS DROP COLUMN EXEMPLO_1234;

#0: EXEMPLO DE DROP POR SCHEMA
DROP SCHEMA estudodecaso2_BD;
