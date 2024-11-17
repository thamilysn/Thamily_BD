CREATE SCHEMA IF NOT EXISTS estudodecaso3_BD;
USE estudodecaso3_BD;

#1. EXEMPLOS DE 5 INSERTS POR TABELA

#INSERTS PARA CLIENTES
INSERT INTO CLIENTES (CLIENTE_ID, CLIENTE_CNPJ, CLIENTE_RAZAOSOCIAL, CLI_RAMOATIVIDADE, CLI_DATACAD) 
VALUES (1, '12345678000199', 'Empresa A', 'Comércio', '2024-01-01');

INSERT INTO CLIENTES (CLIENTE_ID, CLIENTE_CNPJ, CLIENTE_RAZAOSOCIAL, CLI_RAMOATIVIDADE, CLI_DATACAD) 
VALUES (2, '98765432000111', 'Empresa B', 'Serviços', '2024-02-01');

INSERT INTO CLIENTES (CLIENTE_ID, CLIENTE_CNPJ, CLIENTE_RAZAOSOCIAL, CLI_RAMOATIVIDADE, CLI_DATACAD) 
VALUES (3, '11223344000155', 'Empresa C', 'Indústria', '2024-03-01');

INSERT INTO CLIENTES (CLIENTE_ID, CLIENTE_CNPJ, CLIENTE_RAZAOSOCIAL, CLI_RAMOATIVIDADE, CLI_DATACAD) 
VALUES (4, '66778899000144', 'Empresa D', 'Construção', '2024-04-01');

INSERT INTO CLIENTES (CLIENTE_ID, CLIENTE_CNPJ, CLIENTE_RAZAOSOCIAL, CLI_RAMOATIVIDADE, CLI_DATACAD) 
VALUES (5, '55667788000133', 'Empresa E', 'Tecnologia', '2024-05-01');

#INSERTS PARA EMPREGADOS 
INSERT INTO EMPREGADOS (EMP_MATRÍCULA, EMP_NOME, EMP_DATAADMISSÃO, EMP_SALÁRIO, EMP_QUALIFICAÇÕES) 
VALUES (1, 'João Silva', '2022-01-15', 5000.000, 'Engenharia, Liderança');

INSERT INTO EMPREGADOS (EMP_MATRÍCULA, EMP_NOME, EMP_DATAADMISSÃO, EMP_SALÁRIO, EMP_QUALIFICAÇÕES) 
VALUES (2, 'Maria Oliveira', '2023-03-20', 4500.000, 'Contabilidade, Excel Avançado');

INSERT INTO EMPREGADOS (EMP_MATRÍCULA, EMP_NOME, EMP_DATAADMISSÃO, EMP_SALÁRIO, EMP_QUALIFICAÇÕES) 
VALUES (3, 'Pedro Almeida', '2024-05-10', 4200.000, 'TI, Redes de Computadores');

INSERT INTO EMPREGADOS (EMP_MATRÍCULA, EMP_NOME, EMP_DATAADMISSÃO, EMP_SALÁRIO, EMP_QUALIFICAÇÕES) 
VALUES (4, 'Ana Costa', '2023-11-01', 3900.000, 'RH, Gestão de Pessoas');

INSERT INTO EMPREGADOS (EMP_MATRÍCULA, EMP_NOME, EMP_DATAADMISSÃO, EMP_SALÁRIO, EMP_QUALIFICAÇÕES) 
VALUES (5, 'Lucas Souza', '2022-06-12', 4700.000, 'Marketing, SEO');

#INSERT PARA FORNECEDORES
INSERT INTO FORNECEDORES (FORNEC_ID, FORNEC_CNPJ, FORNEC_RAZÃOSOCIAL) 
VALUES (1, '11111111000100', 'Fornecedor A');

INSERT INTO FORNECEDORES (FORNEC_ID, FORNEC_CNPJ, FORNEC_RAZÃOSOCIAL) 
VALUES (2, '22222222000111', 'Fornecedor B');

INSERT INTO FORNECEDORES (FORNEC_ID, FORNEC_CNPJ, FORNEC_RAZÃOSOCIAL) 
VALUES (3, '33333333000122', 'Fornecedor C');

INSERT INTO FORNECEDORES (FORNEC_ID, FORNEC_CNPJ, FORNEC_RAZÃOSOCIAL) 
VALUES (4, '44444444000133', 'Fornecedor D');

INSERT INTO FORNECEDORES (FORNEC_ID, FORNEC_CNPJ, FORNEC_RAZÃOSOCIAL) 
VALUES (5, '55555555000144', 'Fornecedor E');

#INSERTS PARA PRODUTOS 
INSERT INTO PRODUTOS (PROD_ID, PROD_NOME, PROD_COR, PROD_DIMENSÕES, PROD_PESO, PROD_PREÇO, PROD_TEMPOFAB, PROD_DESENHO, PROD_HORASMÃOOBRA) 
VALUES (1, 'Produto A', 'Azul', 15.50, 1.200, 150.000, 5, 'Desenho A', '02:00:00');

INSERT INTO PRODUTOS (PROD_ID, PROD_NOME, PROD_COR, PROD_DIMENSÕES, PROD_PESO, PROD_PREÇO, PROD_TEMPOFAB, PROD_DESENHO, PROD_HORASMÃOOBRA) 
VALUES (2, 'Produto B', 'Vermelho', 20.00, 2.500, 250.000, 6, 'Desenho B', '03:00:00');

INSERT INTO PRODUTOS (PROD_ID, PROD_NOME, PROD_COR, PROD_DIMENSÕES, PROD_PESO, PROD_PREÇO, PROD_TEMPOFAB, PROD_DESENHO, PROD_HORASMÃOOBRA) 
VALUES (3, 'Produto C', 'Verde', 10.00, 1.000, 100.000, 4, 'Desenho C', '01:30:00');

INSERT INTO PRODUTOS (PROD_ID, PROD_NOME, PROD_COR, PROD_DIMENSÕES, PROD_PESO, PROD_PREÇO, PROD_TEMPOFAB, PROD_DESENHO, PROD_HORASMÃOOBRA) 
VALUES (4, 'Produto D', 'Amarelo', 12.00, 1.500, 120.000, 4, 'Desenho D', '01:45:00');

INSERT INTO PRODUTOS (PROD_ID, PROD_NOME, PROD_COR, PROD_DIMENSÕES, PROD_PESO, PROD_PREÇO, PROD_TEMPOFAB, PROD_DESENHO, PROD_HORASMÃOOBRA) 
VALUES (5, 'Produto E', 'Preto', 25.00, 3.000, 300.000, 8, 'Desenho E', '03:30:00');

#INSERTS PARA TIPO_COMPONENTES
INSERT INTO TIPO_COMPONENTES (TIPO_COMP_ID, TIPO_COMP_NOME) VALUES (1, 'Circuito Integrado');

INSERT INTO TIPO_COMPONENTES (TIPO_COMP_ID, TIPO_COMP_NOME) VALUES (2, 'Resistor');

INSERT INTO TIPO_COMPONENTES (TIPO_COMP_ID, TIPO_COMP_NOME) VALUES (3, 'Capacitor');

INSERT INTO TIPO_COMPONENTES (TIPO_COMP_ID, TIPO_COMP_NOME) VALUES (4, 'Transistor');

INSERT INTO TIPO_COMPONENTES (TIPO_COMP_ID, TIPO_COMP_NOME) VALUES (5, 'Diodo');

#INSERTS PARA MAQUINAS 
INSERT INTO MAQUINAS (MAQ_ID, MAQ_TEMPOVIDA, MAQ_DATACOMPRA, MAQ_FIMGARANTIA) 
VALUES (1, '10:00:00', '2020-01-15', '2023-01-15');

INSERT INTO MAQUINAS (MAQ_ID, MAQ_TEMPOVIDA, MAQ_DATACOMPRA, MAQ_FIMGARANTIA) 
VALUES (2, '12:00:00', '2019-06-10', '2024-06-10');

INSERT INTO MAQUINAS (MAQ_ID, MAQ_TEMPOVIDA, MAQ_DATACOMPRA, MAQ_FIMGARANTIA) 
VALUES (3, '8:00:00', '2021-03-22', '2024-03-22');

INSERT INTO MAQUINAS (MAQ_ID, MAQ_TEMPOVIDA, MAQ_DATACOMPRA, MAQ_FIMGARANTIA) 
VALUES (4, '15:00:00', '2018-08-30', '2023-08-30');

INSERT INTO MAQUINAS (MAQ_ID, MAQ_TEMPOVIDA, MAQ_DATACOMPRA, MAQ_FIMGARANTIA) 
VALUES (5, '20:00:00', '2022-11-05', '2027-11-05');

#INSERTS PARA RECURSOS_ESPECIFICOS 
INSERT INTO PRODUTOS_RE (PRODRE_PRODID, PRODRE_REID) VALUES (1, 1);

INSERT INTO PRODUTOS_RE (PRODRE_PRODID, PRODRE_REID) VALUES (2, 2);

INSERT INTO PRODUTOS_RE (PRODRE_PRODID, PRODRE_REID) VALUES (3, 3);

INSERT INTO PRODUTOS_RE (PRODRE_PRODID, PRODRE_REID) VALUES (4, 4);

INSERT INTO PRODUTOS_RE (PRODRE_PRODID, PRODRE_REID) VALUES (5, 5);

#INSERTS PARA CARGOS 
INSERT INTO CARGOS (CARGO_ID, CARGO_NOME, CARGO_DESCRICAO) 
VALUES (1, 'Gerente', 'Responsável pela gestão de equipes e pela tomada de decisões estratégicas.');

INSERT INTO CARGOS (CARGO_ID, CARGO_NOME, CARGO_DESCRICAO) 
VALUES (2, 'Supervisor', 'Coordena as atividades da equipe e garante o cumprimento das metas.');

INSERT INTO CARGOS (CARGO_ID, CARGO_NOME, CARGO_DESCRICAO) 
VALUES (3, 'Assistente Administrativo', 'Auxilia nas atividades administrativas e no controle de documentos.');

INSERT INTO CARGOS (CARGO_ID, CARGO_NOME, CARGO_DESCRICAO) 
VALUES (4, 'Técnico de Manutenção', 'Realiza a manutenção preventiva e corretiva das máquinas e equipamentos.');

INSERT INTO CARGOS (CARGO_ID, CARGO_NOME, CARGO_DESCRICAO) 
VALUES (5, 'Operador de Máquinas', 'Responsável pela operação das máquinas e pelo controle de qualidade durante a produção.');

#INSERTS PARA ENCOMENDAS
INSERT INTO ENCOMENDAS (ENCO_NUM, ENCO_DATAINCLUSÃO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLÍQUIDO, ENCO_FORMAPAG, ENCO_QNDPARCELAS, ENCO_CLIENTEID) 
VALUES (1, '2024-01-15', 500.000, 50.000, 450.000, 'Cartão', 5, 1);

INSERT INTO ENCOMENDAS (ENCO_NUM, ENCO_DATAINCLUSÃO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLÍQUIDO, ENCO_FORMAPAG, ENCO_QNDPARCELAS, ENCO_CLIENTEID) 
VALUES (2, '2024-02-10', 1000.000, 100.000, 900.000, 'Boleto', 2, 2);

INSERT INTO ENCOMENDAS (ENCO_NUM, ENCO_DATAINCLUSÃO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLÍQUIDO, ENCO_FORMAPAG, ENCO_QNDPARCELAS, ENCO_CLIENTEID) 
VALUES (3, '2024-03-20', 750.000, 75.000, 675.000, 'Pix', 1, 3);

INSERT INTO ENCOMENDAS (ENCO_NUM, ENCO_DATAINCLUSÃO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLÍQUIDO, ENCO_FORMAPAG, ENCO_QNDPARCELAS, ENCO_CLIENTEID) 
VALUES (4, '2024-04-05', 1250.000, 125.000, 1125.000, 'Transferência', 4, 4);

INSERT INTO ENCOMENDAS (ENCO_NUM, ENCO_DATAINCLUSÃO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLÍQUIDO, ENCO_FORMAPAG, ENCO_QNDPARCELAS, ENCO_CLIENTEID) 
VALUES (5, '2024-05-15', 600.000, 60.000, 540.000, 'Cartão', 6, 5);

#INSERTS PARA REGISTRO_MANUTENCAO 

INSERT INTO REGISTRO_MANUTENCAO (RM_ID, RM_DATA, RM_DESC, RM_MAQID) VALUES (1, '2024-11-01', 'Manutenção Preventiva', 1);

INSERT INTO REGISTRO_MANUTENCAO (RM_ID, RM_DATA, RM_DESC, RM_MAQID) VALUES (2, '2024-11-02', 'Troca de Peças', 2);

INSERT INTO REGISTRO_MANUTENCAO (RM_ID, RM_DATA, RM_DESC, RM_MAQID) VALUES (3, '2024-11-03', 'Calibração de Sensores', 3);

INSERT INTO REGISTRO_MANUTENCAO (RM_ID, RM_DATA, RM_DESC, RM_MAQID) VALUES (4, '2024-11-04', 'Ajuste de Configurações', 4);

INSERT INTO REGISTRO_MANUTENCAO (RM_ID, RM_DATA, RM_DESC, RM_MAQID) VALUES (5, '2024-11-05', 'Inspeção de Segurança', 5);

#INSERTS PARA REGISTRO_SUPRIMENTO 
INSERT INTO REGISTRO_SUPRIMENTO (RS_ID, RS_QUANTIDADE, RS_DATANECES, RM_PRODID) VALUES (1, 100, '2024-11-01', 1);

INSERT INTO REGISTRO_SUPRIMENTO (RS_ID, RS_QUANTIDADE, RS_DATANECES, RM_PRODID) VALUES (2, 200, '2024-11-02', 2);

INSERT INTO REGISTRO_SUPRIMENTO (RS_ID, RS_QUANTIDADE, RS_DATANECES, RM_PRODID) VALUES (3, 150, '2024-11-03', 3);

INSERT INTO REGISTRO_SUPRIMENTO (RS_ID, RS_QUANTIDADE, RS_DATANECES, RM_PRODID) VALUES (4, 50, '2024-11-04', 4);

INSERT INTO REGISTRO_SUPRIMENTO (RS_ID, RS_QUANTIDADE, RS_DATANECES, RM_PRODID) VALUES (5, 75, '2024-11-05', 5);

#INSERTS PARA PESSOA_CONTATO
INSERT INTO PESSOA_CONTATO (PC_ID, PC_FUNÇÃO, PC_NOME, PC_CLIENTEID) VALUES (1, 'Diretor Comercial', 'Ricardo Almeida', 1);

INSERT INTO PESSOA_CONTATO (PC_ID, PC_FUNÇÃO, PC_NOME, PC_CLIENTEID) VALUES (2, 'Coordenadora de TI', 'Sofia Martins', 2);

INSERT INTO PESSOA_CONTATO (PC_ID, PC_FUNÇÃO, PC_NOME, PC_CLIENTEID) VALUES (3, 'Gerente de Marketing', 'Paula Lima', 3);

INSERT INTO PESSOA_CONTATO (PC_ID, PC_FUNÇÃO, PC_NOME, PC_CLIENTEID) VALUES (4, 'Assistente Administrativo', 'Carlos Mendes', 4);

INSERT INTO PESSOA_CONTATO (PC_ID, PC_FUNÇÃO, PC_NOME, PC_CLIENTEID) VALUES (5, 'CEO', 'Juliana Rocha', 5);

#INSERTS PARA COMPONENTES 
INSERT INTO COMPONENTES (COMP_ID, COMP_NOME, COMP_PREÇOUNIT, COMP_UNIDADE, COMP_QNTESTOQUE, COMP_PRODID) 
VALUES (1, 'Componente A', 15.500, 10, 200, 1);

INSERT INTO COMPONENTES (COMP_ID, COMP_NOME, COMP_PREÇOUNIT, COMP_UNIDADE, COMP_QNTESTOQUE, COMP_PRODID) 
VALUES (2, 'Componente B', 25.300, 20, 150, 2);

INSERT INTO COMPONENTES (COMP_ID, COMP_NOME, COMP_PREÇOUNIT, COMP_UNIDADE, COMP_QNTESTOQUE, COMP_PRODID) 
VALUES (3, 'Componente C', 35.750, 30, 100, 3);

INSERT INTO COMPONENTES (COMP_ID, COMP_NOME, COMP_PREÇOUNIT, COMP_UNIDADE, COMP_QNTESTOQUE, COMP_PRODID) 
VALUES (4, 'Componente D', 45.200, 40, 50, 4);

INSERT INTO COMPONENTES (COMP_ID, COMP_NOME, COMP_PREÇOUNIT, COMP_UNIDADE, COMP_QNTESTOQUE, COMP_PRODID) 
VALUES (5, 'Componente E', 55.800, 50, 75, 5);

#INSERTS PARA ENDEREÇOS 

INSERT INTO ENDEREÇOS (END_ID, END_RUA, END_NUMRUA, END_LOGRADOURO, END_ESTADO, END_CIDADE, END_BAIRRO, END_CEP, END_COMPLEMENTO, END_CLIENTEID, END_EMP_MATRÍCULA, END_FORNECID) 
VALUES (1, 'Rua A', '10', 'Logradouro 1', 'Estado 1', 'Cidade 1', 'Bairro 1', '12345-678', 'Complemento 1', 1, 101, 201);

INSERT INTO ENDEREÇOS (END_ID, END_RUA, END_NUMRUA, END_LOGRADOURO, END_ESTADO, END_CIDADE, END_BAIRRO, END_CEP, END_COMPLEMENTO, END_CLIENTEID, END_EMP_MATRÍCULA, END_FORNECID) 
VALUES (2, 'Rua B', '20', 'Logradouro 2', 'Estado 2', 'Cidade 2', 'Bairro 2', '23456-789', 'Complemento 2', 2, 102, 202);

INSERT INTO ENDEREÇOS (END_ID, END_RUA, END_NUMRUA, END_LOGRADOURO, END_ESTADO, END_CIDADE, END_BAIRRO, END_CEP, END_COMPLEMENTO, END_CLIENTEID, END_EMP_MATRÍCULA, END_FORNECID) 
VALUES (3, 'Rua C', '30', 'Logradouro 3', 'Estado 3', 'Cidade 3', 'Bairro 3', '34567-890', 'Complemento 3', 3, 103, 203);

INSERT INTO ENDEREÇOS (END_ID, END_RUA, END_NUMRUA, END_LOGRADOURO, END_ESTADO, END_CIDADE, END_BAIRRO, END_CEP, END_COMPLEMENTO, END_CLIENTEID, END_EMP_MATRÍCULA, END_FORNECID) 
VALUES (4, 'Rua D', '40', 'Logradouro 4', 'Estado 4', 'Cidade 4', 'Bairro 4', '45678-901', 'Complemento 4', 4, 104, 204);

INSERT INTO ENDEREÇOS (END_ID, END_RUA, END_NUMRUA, END_LOGRADOURO, END_ESTADO, END_CIDADE, END_BAIRRO, END_CEP, END_COMPLEMENTO, END_CLIENTEID, END_EMP_MATRÍCULA, END_FORNECID) 
VALUES (5, 'Rua E', '50', 'Logradouro 5', 'Estado 5', 'Cidade 5', 'Bairro 5', '56789-012', 'Complemento 5', 5, 105, 205);

#INSERTS PARA TELEFONES
INSERT INTO TELEFONES (TEL_ID, TEL_NUM, TEL_CLIENTEID, TEL_EMP_MATRÍCULA, TEL_FORNECID) VALUES (1, '11987654321', 1, 101, 201);

INSERT INTO TELEFONES (TEL_ID, TEL_NUM, TEL_CLIENTEID, TEL_EMP_MATRÍCULA, TEL_FORNECID) VALUES (2, '11912345678', 2, 102, 202);

INSERT INTO TELEFONES (TEL_ID, TEL_NUM, TEL_CLIENTEID, TEL_EMP_MATRÍCULA, TEL_FORNECID) VALUES (3, '11876543210', 3, 103, 203);

INSERT INTO TELEFONES (TEL_ID, TEL_NUM, TEL_CLIENTEID, TEL_EMP_MATRÍCULA, TEL_FORNECID) VALUES (4, '11765432109', 4, 104, 204);

INSERT INTO TELEFONES (TEL_ID, TEL_NUM, TEL_CLIENTEID, TEL_EMP_MATRÍCULA, TEL_FORNECID) VALUES (5, '11654321098', 5, 105, 205); 

#INSERTS PARA ENCOMENDAS_PRODUTOS
INSERT INTO ENCOMENDAS_PRODUTOS (ENCPROD_ENCONUM, ENCPROD_PRODID) VALUES (1, 1);

INSERT INTO ENCOMENDAS_PRODUTOS (ENCPROD_ENCONUM, ENCPROD_PRODID) VALUES (1, 2);

INSERT INTO ENCOMENDAS_PRODUTOS (ENCPROD_ENCONUM, ENCPROD_PRODID) VALUES (2, 3);

INSERT INTO ENCOMENDAS_PRODUTOS (ENCPROD_ENCONUM, ENCPROD_PRODID) VALUES (3, 4);

INSERT INTO ENCOMENDAS_PRODUTOS (ENCPROD_ENCONUM, ENCPROD_PRODID) VALUES (4, 5);

#INSERTS PARA PRODUTOS_TC 
INSERT INTO PRODUTOS_TC (PRODTC_PRODID, PRODTC_TCID) VALUES (1, 1);

INSERT INTO PRODUTOS_TC (PRODTC_PRODID, PRODTC_TCID) VALUES (2, 2);

INSERT INTO PRODUTOS_TC (PRODTC_PRODID, PRODTC_TCID) VALUES (3, 3);

INSERT INTO PRODUTOS_TC (PRODTC_PRODID, PRODTC_TCID) VALUES (4, 4);

INSERT INTO PRODUTOS_TC (PRODTC_PRODID, PRODTC_TCID) VALUES (5, 5);

#INSERTS PARA PRODUTOS_MAQ 
INSERT INTO PRODUTOS_MAQ (PRODMAQ_PRODID, PRODMAQ_MAQID) VALUES (1, 1);

INSERT INTO PRODUTOS_MAQ (PRODMAQ_PRODID, PRODMAQ_MAQID) VALUES (2, 2);

INSERT INTO PRODUTOS_MAQ (PRODMAQ_PRODID, PRODMAQ_MAQID) VALUES (3, 3);

INSERT INTO PRODUTOS_MAQ (PRODMAQ_PRODID, PRODMAQ_MAQID) VALUES (4, 4);

INSERT INTO PRODUTOS_MAQ (PRODMAQ_PRODID, PRODMAQ_MAQID) VALUES (5, 5);

#INSERTS PARA PRODUTOS_RS 
INSERT INTO PRODUTOS_RS (PRODRS_PRODID, PRODRS_RSID) VALUES (1, 1);

INSERT INTO PRODUTOS_RS (PRODRS_PRODID, PRODRS_RSID) VALUES (2, 2);

INSERT INTO PRODUTOS_RS (PRODRS_PRODID, PRODRS_RSID) VALUES (3, 3);

INSERT INTO PRODUTOS_RS (PRODRS_PRODID, PRODRS_RSID) VALUES (4, 4);

INSERT INTO PRODUTOS_RS (PRODRS_PRODID, PRODRS_RSID) VALUES (5, 5);

#INSERTS PARA PRODUTOS_EMPREGADOS
INSERT INTO PRODUTOS_EMPREGADOS (PRODEMP_PRODID, PRODEMP_REID) VALUES (1, 101);

INSERT INTO PRODUTOS_EMPREGADOS (PRODEMP_PRODID, PRODEMP_REID) VALUES (2, 102);

INSERT INTO PRODUTOS_EMPREGADOS (PRODEMP_PRODID, PRODEMP_REID) VALUES (3, 103);

INSERT INTO PRODUTOS_EMPREGADOS (PRODEMP_PRODID, PRODEMP_REID) VALUES (4, 104);

INSERT INTO PRODUTOS_EMPREGADOS (PRODEMP_PRODID, PRODEMP_REID) VALUES (5, 105);

#INSERTS PARA EMPREGADOS_CARGO 
INSERT INTO EMPREGADOS_CARGO (EMPCARGO_EMPID, EMPCARGO_CARGOID) VALUES (101, 1);

INSERT INTO EMPREGADOS_CARGO (EMPCARGO_EMPID, EMPCARGO_CARGOID) VALUES (102, 2);

INSERT INTO EMPREGADOS_CARGO (EMPCARGO_EMPID, EMPCARGO_CARGOID) VALUES (103, 3);

INSERT INTO EMPREGADOS_CARGO (EMPCARGO_EMPID, EMPCARGO_CARGOID) VALUES (104, 4);

INSERT INTO EMPREGADOS_CARGO (EMPCARGO_EMPID, EMPCARGO_CARGOID) VALUES (105, 5);

#INSERTS PARA COMPONENTES_FORNECEDORES 
INSERT INTO COMPONENTES_FORNECEDORES (COMPFORNEC_COMPID, COMPFORNEC_FORNECID) VALUES (1, 101);

INSERT INTO COMPONENTES_FORNECEDORES (COMPFORNEC_COMPID, COMPFORNEC_FORNECID) VALUES (2, 102);

INSERT INTO COMPONENTES_FORNECEDORES (COMPFORNEC_COMPID, COMPFORNEC_FORNECID) VALUES (3, 103);

INSERT INTO COMPONENTES_FORNECEDORES (COMPFORNEC_COMPID, COMPFORNEC_FORNECID) VALUES (4, 104);

INSERT INTO COMPONENTES_FORNECEDORES (COMPFORNEC_COMPID, COMPFORNEC_FORNECID) VALUES (5, 105);

#2. EXEMPLO DE 2 UPDATES POR TABELA 

#UPDATE PARA CLIENTES
UPDATE CLIENTES SET CLI_RAMOATIVIDADE = 'Indústria' WHERE CLIENTE_CNPJ = '12345678000199';

UPDATE CLIENTES SET CLIENTE_RAZAOSOCIAL = 'Nova Razão Social Ltda.' WHERE CLIENTE_ID = 1 AND CLIENTE_ATIVO = 1;

#UPDATE PARA EMPREGADOS
UPDATE EMPREGADOS SET EMPREGADO_SALARIO = 5500.00 WHERE EMPREGADO_ID = 10;

UPDATE EMPREGADOS SET EMPREGADO_CARGO = 'Gerente de Vendas' WHERE EMPREGADO_DEPARTAMENTO = 'Vendas' AND EMPREGADO_ID = 5;

#UPDATE PARA FORNECEDORES
UPDATE FORNECEDORES SET FORNECEDOR_ENDERECO = 'Rua Nova, 123, Centro' WHERE FORNECEDOR_ID = 3;

UPDATE FORNECEDORES SET FORNECEDOR_STATUS = 'Ativo' WHERE FORNECEDOR_ESTADO = 'SP' AND FORNECEDOR_DATA_CONTRATO < '2023-01-01';

#UPDATE PARA PRODUTOS
UPDATE PRODUTOS SET PROD_PREÇO = 150.500 WHERE PROD_ID = 3;

UPDATE PRODUTOS SET PROD_COR = 'Azul' WHERE PROD_PESO > 5.000;

#UPDATE PARA TIPO_COMPONENTES 
UPDATE TIPO_COMPONENTES SET TC_NOME = 'Novo Nome do Componente' WHERE TC_ID = 1;

UPDATE TIPO_COMPONENTES SET TC_NOME = 'Componente Atualizado' WHERE TC_NOME = 'Componente Antigo';

#UPDATE PARA MAQUINAS
UPDATE MAQUINAS SET MAQ_TEMPOVIDA = '5000:00:00' WHERE MAQ_ID = 2;

UPDATE MAQUINAS SET MAQ_DATACOMPRA = '2020-01-15' WHERE MAQ_FIMGARANTIA < CURRENT_DATE;

#UPDATE PARA RECURSOS_ESPECIFICOS
UPDATE RECURSOS_ESPECIFICOS SET RE_QNTNEC = 100 WHERE RE_ID = 3;

UPDATE RECURSOS_ESPECIFICOS SET RE_TEMPOUSO = 50 WHERE RE_HORASMÃOOBRA > '02:00:00';

#UPDATE PARA CARGOS 
UPDATE CARGOS SET CARGO_FUNÇÃO = 'Gerente de TI' WHERE CARGO_ID = 2;

UPDATE CARGOS SET CARGO_NOME = 'Assistente Administrativo' WHERE CARGO_FUNÇÃO = 'Assistente';

#UPDATE PARA ENCOMENDAS
UPDATE ENCOMENDAS SET ENCO_VALORTOTAL = 1500.00 WHERE ENCO_NUM = 1001 AND ENCO_CLIENTEID = 5;

UPDATE ENCOMENDAS SET ENCO_VALORDESCONTO = 200.00, ENCO_VALORLÍQUIDO = ENCO_VALORTOTAL - 200.00 WHERE ENCO_QNDPARCELAS > 3;

#UPDATE PARA REGISTRO_MANUTENÇÃO
UPDATE REGISTRO_MANUTENCAO SET RM_DESC = 'Substituição de peças e ajustes na máquina' WHERE RM_ID = 101 AND RM_MAQID = 5;

UPDATE REGISTRO_MANUTENCAO SET RM_DATA = '2024-11-01' WHERE RM_DATA > '2024-10-01';

#UPDATE PARA REGISTRO_SUPRIMENTO
UPDATE REGISTRO_SUPRIMENTO SET RS_QUANTIDADE = 200 WHERE RS_ID = 1001 AND RM_PRODID = 5001;

UPDATE REGISTRO_SUPRIMENTO SET RS_DATANECES = '2024-12-01' WHERE RS_QUANTIDADE < 50;

#UPDATE PARA PESSOA_CONTATO
UPDATE PESSOA_CONTATO SET PC_FUNÇÃO = 'Gerente de Atendimento' WHERE PC_CLIENTEID = 200;

UPDATE PESSOA_CONTATO SET PC_NOME = 'João Oliveira' WHERE PC_ID = 101 AND PC_CLIENTEID = 500;

#UPDATE PARA COMPONENTES 
UPDATE COMPONENTES SET COMP_PREÇOUNIT = 15.500 WHERE COMP_ID = 10 AND COMP_PRODID = 200;

UPDATE COMPONENTES SET COMP_QNTESTOQUE = 500 WHERE COMP_PRODID = 300;

#UPDATE PARA ENDEREÇOS
UPDATE ENDEREÇOS SET END_RUA = 'Rua Nova', END_NUMRUA = '1234' WHERE END_CLIENTEID = 101 AND END_ID = 5;

UPDATE ENDEREÇOS SET END_CIDADE = 'São Paulo', END_ESTADO = 'SP' WHERE END_FORNECID = 200 AND END_ID = 10;

#UPDATE PARA TELEFONES
UPDATE TELEFONES SET TEL_NUM = '11987654321' WHERE TEL_CLIENTEID = 101 AND TEL_ID = 3;

UPDATE TELEFONES SET TEL_NUM = '1122334455' WHERE TEL_FORNECID = 200 AND TEL_ID = 5;

#UPDATE PARA ENCOMENDAS_PRODUTOS 
UPDATE ENCOMENDAS_PRODUTOS SET ENCPROD_QUANTIDADE = 10 WHERE ENCPROD_ENCONUM = 101 AND ENCPROD_PRODID = 5;

UPDATE ENCOMENDAS_PRODUTOS SET ENCPROD_PRODID = 8 WHERE ENCPROD_ENCONUM = 102 AND ENCPROD_PRODID = 6;

#UPDATE PARA PRODUTOS_TC
UPDATE PRODUTOS_TC SET PRODTC_TCID = 3 WHERE PRODTC_PRODID = 101 AND PRODTC_TCID = 2;

UPDATE PRODUTOS_TC SET PRODTC_PRODID = 104 WHERE PRODTC_PRODID = 102 AND PRODTC_TCID = 5;

#UPDATE PARA PRODUTOS_MAQ
UPDATE PRODUTOS_MAQ SET PRODMAQ_MAQID = 5 WHERE PRODMAQ_PRODID = 102 AND PRODMAQ_MAQID = 3;

UPDATE PRODUTOS_MAQ SET PRODMAQ_PRODID = 110 WHERE PRODMAQ_PRODID = 105 AND PRODMAQ_MAQID = 4;

#UPDATE PARA PRODUTOS_RS
UPDATE PRODUTOS_RS SET PRODRS_RSID = 7 WHERE PRODRS_PRODID = 203 AND PRODRS_RSID = 5;

UPDATE PRODUTOS_RS SET PRODRS_PRODID = 210 WHERE PRODRS_PRODID = 205 AND PRODRS_RSID = 3;

#UPDATE PARA PRODUTOS_RE
UPDATE PRODUTOS_RE SET PRODRE_REID = 12 WHERE PRODRE_PRODID = 305 AND PRODRE_REID = 8;

UPDATE PRODUTOS_RE SET PRODRE_PRODID = 310 WHERE PRODRE_PRODID = 305 AND PRODRE_REID = 9;

#UPDATE PARA PRODUTOS_EMPREGADOS
UPDATE PRODUTOS_EMPREGADOS SET PRODEMP_REID = 102 WHERE PRODEMP_PRODID = 500 AND PRODEMP_REID = 101;

UPDATE PRODUTOS_EMPREGADOS SET PRODEMP_PRODID = 505 WHERE PRODEMP_PRODID = 500 AND PRODEMP_REID = 101;

#UPDATE PARA EMPREGADOS_CARGO
UPDATE EMPREGADOS_CARGO SET EMPCARGO_CARGOID = 3 WHERE EMPCARGO_EMPID = 101 AND EMPCARGO_CARGOID = 2;

UPDATE EMPREGADOS_CARGO SET EMPCARGO_EMPID = 104 WHERE EMPCARGO_EMPID = 102 AND EMPCARGO_CARGOID = 2;

#UPDATE PARA COMPONENTES_FORNECEDORES
UPDATE COMPONENTES_FORNECEDORES SET COMPFORNEC_FORNECID = 205 WHERE COMPFORNEC_COMPID = 101 AND COMPFORNEC_FORNECID = 202;

UPDATE COMPONENTES_FORNECEDORES SET COMPFORNEC_COMPID = 106 WHERE COMPFORNEC_COMPID = 103 AND COMPFORNEC_FORNECID = 204;

#3. EXEMPLO DE 1 DELETE POR TABELA
DELETE FROM CLIENTES WHERE CLIENTE_ID = 1;

DELETE FROM EMPREGADOS WHERE EMP_MATRÍCULA = ?;

DELETE FROM FORNECEDORES WHERE FORNEC_ID = 2001;

DELETE FROM PRODUTOS WHERE PROD_ID = 3001;

DELETE FROM TIPO_COMPONENTES WHERE TC_ID = 4001;

DELETE FROM MAQUINAS WHERE MAQ_ID = 5001;

DELETE FROM RECURSOS_ESPECIFICOS WHERE RE_ID = 6001;

DELETE FROM CARGOS WHERE CARGO_ID = 7001;

DELETE FROM ENCOMENDAS WHERE ENCO_NUM = 8001 AND ENCO_CLIENTEID = 1;

DELETE FROM REGISTRO_MANUTENCAO WHERE RM_ID = 9001 AND RM_MAQID = 5001;

DELETE FROM REGISTRO_SUPRIMENTO WHERE RS_ID = 10001 AND RM_PRODID = 3001;

DELETE FROM PESSOA_CONTATO WHERE PC_ID = 11001 AND PC_CLIENTEID = 1;

DELETE FROM COMPONENTES WHERE COMP_ID = 12001 AND COMP_PRODID = 3001;

DELETE FROM ENDEREÇOS WHERE END_ID = 13001 AND END_CLIENTEID = 1 AND END_EMP_MATRÍCULA = 1001 AND END_FORNECID = 2001;

DELETE FROM TELEFONES WHERE TEL_ID = 14001 AND TEL_CLIENTEID = 1 AND TEL_EMP_MATRÍCULA = 1001 AND TEL_FORNECID = 2001;

DELETE FROM ENCOMENDAS_PRODUTOS WHERE ENCPROD_ENCONUM = 8001 AND ENCPROD_PRODID = 3001;

DELETE FROM PRODUTOS_TC WHERE PRODTC_PRODID = 3001 AND PRODTC_TCID = 4001;

DELETE FROM PRODUTOS_MAQ WHERE PRODMAQ_PRODID = 3001 AND PRODMAQ_MAQID = 5001;

DELETE FROM PRODUTOS_RS WHERE PRODRS_PRODID = 3001 AND PRODRS_RSID = 10001;

DELETE FROM PRODUTOS_RE WHERE PRODRE_PRODID = 3001 AND PRODRE_REID = 6001;

DELETE FROM PRODUTOS_EMPREGADOS WHERE PRODEMP_PRODID = 3001 AND PRODEMP_REID = 1001;

DELETE FROM EMPREGADOS_CARGO WHERE EMPCARGO_EMPID = 1001 AND EMPCARGO_CARGOID = 7001;

DELETE FROM COMPONENTES_FORNECEDORES WHERE COMPFORNEC_COMPID = 1 AND COMPFORNEC_FORNECID = 100;