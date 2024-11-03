CREATE SCHEMA IF NOT EXISTS estudodecaso4_BD;

USE estudodecaso4_BD;

CREATE TABLE IF NOT EXISTS ALUNOS(
ALUNO_ID INT PRIMARY KEY,
ALUNO_NOME VARCHAR (100) NOT NULL,
ALUNO_CPF VARCHAR(8) NOT NULL,
ALUNO_DATANASC DATE NOT NULL,
ALUNO_CEP VARCHAR (8) NOT NULL,
ALUNO_NUMRUA VARCHAR(5) NOT NULL,
ALUNO_RUA VARCHAR (40) NOT NULL,
ALUNO_BAIRRO VARCHAR (40) NOT NULL, 
ALUNO_CIDADE VARCHAR (40) NOT NULL, 
ALUNO_ESTADO VARCHAR (40) NOT NULL, 
ALUNO_PAIS VARCHAR (40) NOT NULL,
ALUNO_UF VARCHAR (2) NOT NULL,
ALUNO_COMPLEMENTO TEXT
);

CREATE TABLE IF NOT EXISTS INSTRUTORES(
INST_ID INT PRIMARY KEY,
INST_NOME TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS MODALIDADES (
MOD_ID INT PRIMARY KEY,
MOD_NOME TEXT
);

CREATE TABLE IF NOT EXISTS PAGAMENTOS (
PAG_ID INT,
PAG_DATA DATE NOT NULL,
PAG_VALOR DECIMAL (5,2),
PAG_STATUS TINYINT,
ALUNOPAG_ID INT,
PRIMARY KEY(PAG_ID, ALUNOPAG_ID),
CONSTRAINT ALUNOID_FK FOREIGN KEY (ALUNOPAG_ID) REFERENCES ALUNOS (ALUNO_ID)
);

CREATE TABLE IF NOT EXISTS INST_MOD (
INSTMOD_INST_ID INT,
INSTMOD_MOD_ID INT,
PRIMARY KEY (INSTMOD_INST_ID, INSTMOD_MOD_ID),
CONSTRAINT INSTMOD_INST_FK FOREIGN KEY (INSTMOD_INST_ID) REFERENCES INSTRUTORES (INST_ID),
CONSTRAINT INSTMOD_MOD_FK FOREIGN KEY (INSTMOD_MOD_ID) REFERENCES MODALIDADES (MOD_ID)
); 

CREATE TABLE IF NOT EXISTS AULAS (
AULA_ID INT,
AULA_CAPAC_ALUNOS INT NOT NULL,
AULA_HORA TIME NOT NULL, 
AULA_QNT_INSC INT NOT NULL,
AULA_CAPAC INT NOT NULL,
AULA_INST_ID INT,
PRIMARY KEY (AULA_ID, AULA_INST_ID),
CONSTRAINT AULAS_INSTID_FK FOREIGN KEY (AULA_INST_ID) REFERENCES INSTRUTORES (INST_ID)
);

CREATE TABLE IF NOT EXISTS ALUNO_AULA (
ALUNOAULA_ALUNOID INT,
ALUNOAULA_AULAID INT,
PRIMARY KEY (ALUNOAULA_ALUNOID, ALUNOAULA_AULAID),
CONSTRAINT ALUNOAULA_ALUNOID_FK FOREIGN KEY (ALUNOAULA_ALUNOID) REFERENCES ALUNOS (ALUNO_ID),
CONSTRAINT ALUNOAULA_AULAID_FK FOREIGN KEY (ALUNOAULA_AULAID) REFERENCES AULAS (AULA_ID)
);

CREATE TABLE IF NOT EXISTS PLANO_TREINAMENTO (
PLANTREINO_ID INT, 
PLANTREINO_DESC TEXT NOT NULL,
PLANTREINO_DATACRIAÇÃO DATE NOT NULL,
PLANTREINO_DATAATT DATE NOT NULL, 
ALUNO_TREINO_ID INT,
PT_INSTMOD_INST_ID INT, 
PT_INSTMOD_MOD_ID INT,
PRIMARY KEY (PLANTREINO_ID, ALUNO_TREINO_ID, PT_INSTMOD_INST_ID, PT_INSTMOD_MOD_ID),
CONSTRAINT PLANO_ALUNOTREINOID_FK FOREIGN KEY (ALUNO_TREINO_ID) REFERENCES ALUNOS (ALUNO_ID),
CONSTRAINT PLANO_INSTMOD_FK FOREIGN KEY (PT_INSTMOD_INST_ID, PT_INSTMOD_MOD_ID) REFERENCES INST_MOD (INSTMOD_INST_ID, INSTMOD_MOD_ID)
);

#1. EXEMPLO DE ALTER TABLE: ALUNOS
ALTER TABLE ALUNOS ADD EXEMPLO_123 TEXT;
ALTER TABLE ALUNOS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE ALUNOS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE ALUNOS DROP COLUMN EXEMPLO_1234;

#2. EXEMPLO DE ALTER TABLE: INSTRUTORES
ALTER TABLE INSTRUTORES ADD EXEMPLO_123 TEXT;
ALTER TABLE INSTRUTORES MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE INSTRUTORES CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE INSTRUTORES DROP COLUMN EXEMPLO_1234;

#3. EXEMPLO DE ALTER TABLE: MODALIDADES
ALTER TABLE MODALIDADES ADD EXEMPLO_123 TEXT;
ALTER TABLE MODALIDADES MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE MODALIDADES CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE MODALIDADES DROP COLUMN EXEMPLO_1234;

#4. EXEMPLO DE ALTER TABLE: PAGAMENTOS
ALTER TABLE PAGAMENTOS ADD EXEMPLO_123 TEXT;
ALTER TABLE PAGAMENTOS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE PAGAMENTOS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE PAGAMENTOS DROP COLUMN EXEMPLO_1234;

#5. EXEMPLO DE ALTER TABLE: INST_MOD
ALTER TABLE INST_MOD ADD EXEMPLO_123 TEXT;
ALTER TABLE INST_MOD MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE INST_MOD CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE INST_MOD DROP COLUMN EXEMPLO_1234;

#6. EXEMPLO DE ALTER TABLE: AULAS
ALTER TABLE AULAS ADD EXEMPLO_123 TEXT;
ALTER TABLE AULAS MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE AULAS CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE AULAS DROP COLUMN EXEMPLO_1234;

#7. EXEMPLO DE ALTER TABLE: ALUNO_AULA
ALTER TABLE ALUNO_AULA ADD EXEMPLO_123 TEXT;
ALTER TABLE ALUNO_AULA MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE ALUNO_AULA CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE ALUNO_AULA DROP COLUMN EXEMPLO_1234;

#8. EXEMPLO DE ALTER TABLE: PLANO_TREINAMENTO
ALTER TABLE PLANO_TREINAMENTO ADD EXEMPLO_123 TEXT;
ALTER TABLE PLANO_TREINAMENTO MODIFY EXEMPLO_123 DECIMAL(10,3);
ALTER TABLE PLANO_TREINAMENTO CHANGE COLUMN EXEMPLO_123 EXEMPLO_1234 VARCHAR(20) NOT NULL;
ALTER TABLE PLANO_TREINAMENTO DROP COLUMN EXEMPLO_1234;

#0: EXEMPLO DE DROP POR SCHEMA
DROP SCHEMA IF EXISTS estudodecaso4_BD;
