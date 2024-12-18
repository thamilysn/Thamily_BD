CREATE SCHEMA estudodecaso5_BD;

USE estudodecaso5_BD;

CREATE TABLE IF NOT EXISTS CLIENTES (
CLIENTE_CPF VARCHAR(14) PRIMARY KEY,
CLIENTE_NOME VARCHAR(50) NOT NULL,
CLIENTE_DATANASC DATE NOT NULL,
CLIENTE_STATUSFID ENUM('ATIVO', 'INATIVO') NOT NULL,
CLIENTE_RUA VARCHAR(45) NOT NULL,
CLIENTE_NUMRUA INT NOT NULL,
CLIENTE_BAIRRO VARCHAR(45) NOT NULL,
CLIENTE_REFERENCIA TEXT NOT NULL,
CLIENTE_CIDADE VARCHAR(45) NOT NULL,
CLIENTE_ESTADO VARCHAR(45) NOT NULL, 
CLIENTE_CEP VARCHAR(11) NOT NULL, 
CLIENTE_PAIS VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUTOS (
PROD_ID INT PRIMARY KEY,
PROD_NOME VARCHAR(45) NOT NULL, 
PROD_QUANT INT NOT NULL,
PROD_PRECO DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS FORNECEDORES (
FORNEC_ID INT PRIMARY KEY,
FORNEC_NOME VARCHAR(45) NOT NULL, 
FORNEC_CONTATO TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS VENDAS (
VENDA_ID INT PRIMARY KEY,
VENDA_CLIENTE_CPF VARCHAR(14) NOT NULL,
CONSTRAINT VENDA_CLIENTEID_FK FOREIGN KEY (VENDA_CLIENTE_CPF) REFERENCES CLIENTES (CLIENTE_CPF)
);

CREATE TABLE IF NOT EXISTS PAGAMENTOS (
PAG_ID INT,
PAG_DATA DATE NOT NULL NOT NULL,
PAG_VALOR DECIMAL(10,2) NOT NULL,
PAG_STATUS ENUM('PAGO', 'NAO PAGO') NOT NULL,
PAG_VENDAID INT,
PRIMARY KEY (PAG_ID, PAG_VENDAID),
CONSTRAINT PAG_VENDAID_FK FOREIGN KEY (PAG_VENDAID) REFERENCES VENDAS (VENDA_ID)
);

CREATE TABLE IF NOT EXISTS VENDAS_PRODUTOS (
VENDPROD_VENDAID INT,
VEND_PROD_QNTVENDIDA INT NOT NULL,
VEND_PROD_VALORVENDA DECIMAL(10,2) NOT NULL,
VENDPROD_PRODID INT,
PRIMARY KEY (VENDPROD_VENDAID, VENDPROD_PRODID),
CONSTRAINT VENDPROD_VENDAID_FK FOREIGN KEY (VENDPROD_VENDAID) REFERENCES VENDAS (VENDA_ID),
CONSTRAINT VENDPROD_PRODID_FK FOREIGN KEY (VENDPROD_PRODID) REFERENCES PRODUTOS (PROD_ID)
);

CREATE TABLE IF NOT EXISTS PROD_FORNEC (
PRODFORNEC_PRODID INT,
PRODFORNEC_FORNECID INT,
PRIMARY KEY (PRODFORNEC_PRODID, PRODFORNEC_FORNECID), 
CONSTRAINT PRODFORNEC_PRODID_FK FOREIGN KEY (PRODFORNEC_PRODID) REFERENCES PRODUTOS (PROD_ID),
CONSTRAINT PRODFORNEC_FORNECID_FK FOREIGN KEY (PRODFORNEC_FORNECID) REFERENCES FORNECEDORES (FORNEC_ID)
);

#1. EXEMPLO DE ALTER TABLE: CLIENTES
ALTER TABLE CLIENTES ADD EXEMPLO_123 TEXT;
ALTER TABLE CLIENTES MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE CLIENTES CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE CLIENTES DROP COLUMN EXEMPLO_1234;

#2. EXEMPLO DE ALTER TABLE: PRODUTOS
ALTER TABLE PRODUTOS ADD EXEMPLO_123 TEXT;
ALTER TABLE PRODUTOS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE PRODUTOS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE PRODUTOS DROP COLUMN EXEMPLO_1234;

#3. EXEMPLO DE ALTER TABLE: FORNECEDORES
ALTER TABLE FORNECEDORES ADD EXEMPLO_123 TEXT;
ALTER TABLE FORNECEDORES MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE FORNECEDORES CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE FORNECEDORES DROP COLUMN EXEMPLO_1234;

#4. EXEMPLO DE ALTER TABLE: VENDAS
ALTER TABLE VENDAS ADD EXEMPLO_123 TEXT;
ALTER TABLE VENDAS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE VENDAS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE VENDAS DROP COLUMN EXEMPLO_1234;

#5. EXEMPLO DE ALTER TABLE: PAGAMENTOS
ALTER TABLE PAGAMENTOS ADD EXEMPLO_123 TEXT;
ALTER TABLE PAGAMENTOS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE PAGAMENTOS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE PAGAMENTOS DROP COLUMN EXEMPLO_1234;

#6. EXEMPLO DE ALTER TABLE: VENDAS_PRODUTOS
ALTER TABLE VENDAS_PRODUTOS ADD EXEMPLO_123 TEXT;
ALTER TABLE VENDAS_PRODUTOS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE VENDAS_PRODUTOS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE VENDAS_PRODUTOS DROP COLUMN EXEMPLO_1234;

#7. EXEMPLO DE ALTER TABLE: PROD_FORNEC
ALTER TABLE PROD_FORNEC ADD EXEMPLO_123 TEXT;
ALTER TABLE PROD_FORNEC MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE PROD_FORNEC CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE PROD_FORNEC DROP COLUMN EXEMPLO_1234;

#0: EXEMPLO DE DROP POR SCHEMA
DROP SCHEMA estudodecaso5_BD;
