# Banco de Dados do Projeto Fortificar

## Sobre o Projeto 
O Projeto Fortificar é uma ação social desenvolvida pela empresa Fortes Engenharia LTDA, que é uma empresa de construção civil industrial que busca atuar com ética, competitividade e qualidade. A empresa acredita que investir
no desenvolvimento social é uma das formas mais efetivas de transformar o cenário socioeconômico. Por isto, em conjunto com os Objetivos de Desenvolvimento Sustentável da Organização das Nações Unidas - ONU para 2030, bem 
como de acordo com o Plano de Desenvolvimento cujos valores estão pautados em cinco pilares: Ética, Empatia, Consciência Ambiental, Inovação e Responsabilidade Social, a FORTES busca atuar de forma ativa e concreta no que 
tange a Responsabilidade Social por meio do Programa Fortificar, cujo objetivo é fortalecer as ações do Pilar Social da Fortes, reunindo todas as ações de cunho social dentro de um único Programa.

Atualmente, a empresa encontra um desafio muito grande na implementação deste programa: ela não consegue alcançar a todos os envolvidos dos projetos sociais com eficiência. O grande objetivo deste trabalho é proporcionar
um ambiente que permita que a comunidade ao redor da FORTES enxergue que a empresa está a disposição para ajudá-los e receber apoio para tal. Isto será realizado por meio do desenvolvimento de um banco de dados, junto com o 
protótipo de um site desenvolvido especialmente para suprir as necessidades da FORTES (desenvolvido na matéria de Experiência e Interface com o Usuário). Abaixo, segue a estrutura dos dados junto com a estrutura do DER:

# Estrutura do DER do Projeto
O banco de dados será desenvolvido a partir de um modelo de Diagrama Entidade Relacionamento do modelo lógico, junto com a modelagem em SQL. Para representar todos os envolvidos no projeto, separei-os em 6 entidades:

- **Colaboradores**: envolvidos que ajudam nos projetos por meio de doações, ações voluntárias e participação direta no projeto;
2- Beneficiários do projeto: as pessoas que serão diretamente beneficiadas pelo projeto;
3- Instituições do projeto: envolvidos dos projetos selecionados que atendem as ações sociais;
4- Projetos sociais envolvidos: os projetos apoiados pela fortes que realizarão as ações sociais que buscam ajudar diretamente os envolvidos no projeto;
5- Doações realizadas aos projetos: seria a transferência/entrega de bens, serviços ou vantagens (em dinheiro ou de qualquer outra espécie) a outrem de forma gratuita;
6- Edital para a aprovação dos projetos: a seleção dos projetos Sociais será realizada por meio de um edital de seleção de projetos sociais observando os critérios de seleção descritos no edital de abertura;

## Relação entre as entidades
O banco de dados foi estruturado pensando em suportar a lógica de doações do Programa Fortificar. A ideia seria rastrear:
- Quem realizou doações e quanto doou.
- Quais instituições e projetos foram beneficiados.
- Beneficiários diretos de cada projeto.
  
Por isso, os relacionamentos seriam de:
- Um Colaborador poder realizar várias Doações.
- Um Projeto poder receber várias Doações e atender a vários Beneficiários.
- Uma Instituição poder gerenciar vários Projetos.
- Um Edital poder gerenciar vários Projetos.
- Cada Projeto deve estar associado a um Edital

# Significado das Chaves do Banco de Dados

## **Colaboradores**
- **COLAB_ID**: Identificador único dos colaboradores.
- **COLAB_NOME**: Nome dos colaboradores.
- **COLAB_RUA**: Rua do endereço dos colaboradores.
- **COLAB_NUMRUA**: Número da rua.
- **COLAB_BAIRRO**: Bairro do colaborador.
- **COLAB_CIDADE**: Cidade do colaborador.
- **COLAB_ESTADO**: Estado do colaborador.
- **COLAB_PAIS**: País de origem do colaborador.
- **COLAB_CODPOSTAL**: Código postal do colaborador.
- **COLAB_TELEFONE**: Telefone de contato.
- **COLAB_EMAIL**: E-mail de contato.

---

## **Instituição**
- **INST_ID**: Identificador único das instituições.
- **INST_NOME**: Nome das instituições.
- **INST_RUA**: Rua do endereço das instituições.
- **INST_NUMRUA**: Número da rua.
- **INST_BAIRRO**: Bairro da instituição.
- **INST_CIDADE**: Cidade da instituição.
- **INST_ESTADO**: Estado da instituição.
- **INST_PAIS**: País de origem da instituição.
- **INST_CODPOSTAL**: Código postal da instituição.
- **INST_TELEFONE**: Telefone de contato.
- **INST_EMAIL**: E-mail para contato.

---

## **Edital**
- **EDITAL_ID**: Identificador único de cada edital.
- **EDITAL_TITULO**: Título referente ao edital.
- **EDITAL_DATAPUB**: Data de publicação do edital (abertura).
- **EDITAL_DATAFIM**: Data do fim do período de inscrições.
- **EDITAL_DESC**: Descrição do edital.

---

## **Projetos**
- **PROJETO_ID**: Identificador único de cada projeto.
- **PROJETO_NOME**: Nome do projeto.
- **PROJETO_DESC**: Descrição do projeto.
- **PROJETO_FOCO**: Enfoque do projeto (área de atuação).
- **PROJETO_INST**: FK do relacionamento entre os projetos e as instituições.
- **PROJETO_EDIT**: FK do relacionamento entre os projetos e os editais.

---

## **Doações**
- **DOACAO_ID**: Identificador único de cada doação.
- **DOACAO_DATA**: Data em que a doação foi realizada.
- **DOACAO_VALOR**: Valor total da doação.
- **DOACAO_COLAB**: FK do relacionamento entre as doações e os colaboradores.
- **DOACAO_PROJETO**: FK do relacionamento entre as doações e os projetos.

---

## **Beneficiário**
- **BENEF_ID**: Identificador único do beneficiário.
- **BENEF_NOME**: Nome completo do beneficiário.
- **BENEF_CPF**: CPF do beneficiário.
- **BENEF_TIPOAJUDA**: Tipo de ajuda fornecida ao beneficiário.
- **BENEF_PROJETO**: FK do relacionamento entre beneficiários e projetos.
