#2 EXEMPLOS DE DML PARA CADA ENTIDADE:

INSERT INTO COLABORADOR (COLAB_ID, COLAB_NOME, COLAB_RUA, COLAB_NUMRUA, COLAB_BAIRRO, COLAB_CIDADE, COLAB_ESTADO, COLAB_PAIS, COLAB_CODPOSTAL, COLAB_TELEFONE, COLAB_EMAIL)
VALUES 
(1, 'João Pedro da Silva', 'Rua das Flores', '12', 'Porto de Santana', 'Cariacica', 'Espírito Santo', 'Brasil', '01001-000', '(11) 91234-5678', 'joao.silva@email.com'),
(2, 'Maria Oliveira Costa', 'Av. Paulista', '456', 'Bela Vista', 'São Paulo', 'SP', 'Brasil', '01311-200', '(11) 92345-6789', 'maria.oliveira@email.com');

INSERT INTO INSTITUICAO (INST_ID, INST_NOME, INST_RUA, INST_NUMRUA, INST_BAIRRO, INST_CIDADE, INST_ESTADO, INST_PAIS, INST_CODPOSTAL, INST_TELEFONE, INST_EMAIL)
VALUES 
(1, 'Instituto Vida', 'Rua Alegre', '100', 'Jardim', 'Rio de Janeiro', 'RJ', 'Brasil', '20000-000', '(21) 92345-6789', 'contato@institutovida.org'),
(2, 'Fundação Esperança', 'Av. Central', '500', 'Centro', 'Brasília', 'DF', 'Brasil', '70000-000', '(61) 93456-7890', 'contato@fundacaoesperanca.org');

INSERT INTO EDITAL (EDITAL_ID, EDITAL_TITULO, EDITAL_DATAPUB, EDITAL_DATAFIM, EDITAL_DESC)
VALUES 
(1, 'Edital Projeto Fortificar 2024-1', '2024-01-15', '2024-02-15', 'Edital para inscrição de projetos do 1° semestre de 2024'),
(2, 'Edital Projeto Fortificar 2024-2', '2024-06-15', '2024-07-15', 'Edital para inscrição de projetos do 2° semestre de 2024');

INSERT INTO PROJETO (PROJETO_ID, PROJETO_NOME, PROJETO_DESC, PROJETO_FOCO, PROJETO_INST, PROJETO_EDIT)
VALUES 
(1, 'Sim, eu quero doar', 'programa de doação de cestas básicas pelos colaboradores a pessoas em situação de insegurança alimentar.', 'SAUDE', 1, 1),
(2, 'Projeto Cereias', 'Centro de Reintrodução de Animais Selvagens.', 'MEIO AMBIENTE', 2, 2);

INSERT INTO DOACAO (DOACAO_ID, DOACAO_DATA, DOACAO_VALOR, DOACAO_COLAB, DOACAO_PROJETO)
VALUES 
(1, '2024-03-01', 500.00, 1, 1),
(2, '2024-04-15', 300.00, 2, 2);

INSERT INTO BENEFICIARIO (BENEF_ID, BENEF_NOME, BENEF_CPF, BENEF_TIPOAJUDA, BENEF_PROJETO)
VALUES 
(1, 'Carlos Santos', '12345678901', 'Apoio médico', 1),
(2, 'Ana Souza', '98765432100', 'Apoio educacional', 2);
