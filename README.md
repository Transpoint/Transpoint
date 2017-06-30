# TRABALHO 01:  Transpoint
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
André Martins: objetovazio@gmail.com<br>
Elimar Macena: elimar.macena@gmail.com<br>
Hellesandro Gonzaga: hellesandro@hotmail.com<br>
Serenna Ferrari: serenna.ferrari@hotmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados Transpoint 
<br>e com a motivação de facilitar o uso do transporte público. <br>

### 3.MINI-MUNDO<br>
&emsp; Hoje em dia para efetuar uma recarga no cartão da rede Transcol é preciso deslocar-se até um dos centros de venda e enfrentar filas. Além disso, para grande parte dos usuários do sistema Transcol, sair de casa e utilizar dos coletivos para deslocar-se até outro ponto é de difícil planejamento, pois por diversas vezes os horários não são seguidos corretamente, seja por decorrência do trânsito ou devido a outras ocorrências. Assim, torna-se complicado planejar-se de uma maneira mais eficiente. <br><br>
&emsp; O TransPoint vem com as seguintes ideias para lidar com esses problemas:
<ul>
   <li> 
      Oferecer a facilidade de reunir todas as informações do usuário, consultar seu saldo de passagens e categoria de usuário, recarga diretamente pelo aplicativo, checar horários e localização aproximada dos coletivos. Assim, os usuários podem planejar-se e poupar tempo, no momento que não é mais necessário deslocar-se para um guichê de vendas.
   </li>
   <li> 
      Pagar passagem via NFC, com objetivo de oferecer outra forma de pagar além do cartão de passagem e também de trazer a tona o uso dessa tecnologia para pagamentos.
   </li>
   <li> 
      Itinerários dos ônibus de modo mais visual ao exibir as rotas em um mapa, ao invés de apenas os nomes das vias que o coletivo passa.
   </li>
   <li>Previsões aproximadas de tempo de chegada de um ônibus em determinado ponto.</li>
</ul><br>
&emsp; O planejamento e otimização de tempo é um dos principais pontos que o aplicativo busca atender, pois será possível planejar melhor o tempo com as previsões e agilidade ao efetuar recargas online. Além de também servir como um incentivo para a utilização de ônibus.


### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas.<a href="https://github.com/Transpoint/TranspointProject/blob/master/Transpoint.pdf"> Mockup </a><br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
   <a href="https://github.com/Transpoint/TranspointProject/blob/master/tabelaTransPointF.xlsx"><img src="https://github.com/Transpoint/TranspointProject/blob/master/tabela_transpoint.PNG" title="Tabela do sistema" /></a>
   
### 5.MODELO CONCEITUAL<br>
    
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Modelos/Modelo%20Conceitual/Modelo%20Conceitual.jpg "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
#### 5.1 Validação do Modelo Conceitual
    [IPAO]: [Yan de Paula, Lucas Gomes, Tadeu da Penha, Ewerson Vieira]
    [GeMan]: [Gabriel Marchezi, Helen França, Olavo Curátola]

#### 5.2 DECISÕES DE PROJETO
    
    Campo Coordenadas:  A utilização de varchar é justificada pela opção de usar coordenadas geográficas para localização dos coletivos ao invés de endereços, facilitando a manipulação e evitando conflitos com nomes de ruas iguais em pontos diferentes. <br>
    

#### 5.3 DESCRIÇÃO DOS DADOS 

Tabela PESSOA: Tabela que armazena informações referente aos usuários do aplicativo.<br>
* cod_pessoa: (CHAVE PRIMARIA) Campo que armazena um número único identificador da pessoa.<br>
* nome_pessoa: Campo que armazena o nome da pessoa.<br>
* cpf: Campo que armazena o número de Cadastro de Pessoa Física para cada usuário.<br>
* data_nasc: Campo que armazena a data de nascimento do usuário.<br>

Tabela MODALIDADE: Tabela que armazena informações de classes que cada usuário pertence.<br>
* cod_modalidade: (CHAVE PRIMÁRIA) Campo que armazena um número único identicador das modalidadee existentes.<br>
* nome_modalidade: Campo que armazena a identificação por nome de cada modalidade.<br>
* limite_uso: Campo que armazena a quantidade de utilizações permitidas para cada modalidade.<br>

Tabela HISTORICO_SALDO: Tabela que armazena informações relevantes do saldo do usuário.<br>
* cod_saldo: (CHAVE PRIMARIA) Campo que armazena um número único identificador do saldo.<br>
* lib_prox_compra: Campo que armazena a data de liberação da proxima compra.<br>
* ultima_compra: Campo que armazena a data da ultima compra efetuada.<br>
* saldo: Campo que armazena o saldo atual do usuário.<br>

Tabela PGT_PASSAGEM: Tabela que armazena informações relacionadas a passagens pagas.<br>
* cod_pagamento: (CHAVE PRIMARIA) Campo que armazena um número único identificador do pagamento.<br>
* saldo_anterior: Campo que armazena o saldo antes do pagamento da passagem.<br>
* data: Campo que armazena a data do pagamento.<br>

Tabela LOCAL_COLETIVO: Tabela que armazena informações da localização dos ônibus.<br>
* cod_localizacao: (CHAVE PRIMARIA) Campo que armazena um número único identificador do ônibus.<br>
* coordenadas: Campo que armazena informações de coordenadas do ônibus.<br>

Tabela COLETIVO: Tabela que armazena informações do ônibus.<br>
* cod_coletivo: Campo que armazena um número único identificador dos ônibus.<br>
* linha: Campo que armazena o número da linha do ônibus.<br>
* partida: Campo que armazena a partida do ônibus.<br>
* destino: Campo que armazena o destino do ônibus.<br>

Tabela BANDEIRA: Tabela que armazena das bandeiras de cartão.<br>
* cod_bandeira: Campo identificador do registro de bandeira.<br>
* nome_bandeira: Nome da bandeira de cartão.<br>

Tabela CARTAO: Tabela que armazena os dados de um cartão do usuario.<br>
* cod_cartao: Campo identificador de um cartao.<br>
* cpf: CPF do dono do cartao.<br>
* vencimento: Data de vencimento do cartão.<br>
* cvv: Código de segurança do cartão.<br>
* nome: Nome do dono do cartão.<br>
* numero_cartao: Número do cartão do usuário.<br>


### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Modelos/Modelo%20L%C3%B3gico/Modelo%20L%C3%B3gico.jpg "Modelo Conceitual")

### 7	MODELO FÍSICO<br>
<a href="https://github.com/Transpoint/TranspointProject/blob/master/Modelos/Modelo%20Fisico/Modelo%20F%C3%ADsico.sql"> Modelo físico </a><br>
       

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
Geramos os dados de forma aleatória pelo seguintes links: <br>http://pt.fakenamegenerator.com/ <br>http://random-date-generator.com/ <br>http://listofrandomnames.com/index.cfm<br> http://www.geomidpoint.com/random/<br>
<br>Não utilizamos nenhum código previamente pronto e desenvolvemos nosso projeto a partir de situações
cotidianas.


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
<a href="https://github.com/Transpoint/TranspointProject/blob/master/Scripts/Insert%20Data%20Transpoint.sql"> Script de insert de dados ao banco. </a><br>

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
<a href="https://github.com/Transpoint/TranspointProject/blob/master/Scripts/Create%20Database%20and%20Insert%20Data.sql"> Script de criação do banco, inserção dos dados e backup das tabelas. </a><br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

SIGAM ESSE EXEMPLO GUYS:
```sql
SELECT * FROM PESSOA;
SELECT cod_cartao FROM CARTAO;
ETC (Olhem no text do readme);
```

```sql
SELECT * FROM PESSOA;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.1/9.1.1.png "Tabela Pessoa") <br>

```sql
SELECT * FROM COLETIVO;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.1/9.1.2.png "Tabela Coletivo") <br>

```sql
SELECT * FROM MODALIDADE;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.1/9.1.3.png "Tabela Modalidade") <br>

```sql
SELECT * FROM BANDEIRA;
```
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.1/9.1.4.png "Tabela Bandeira") <br>

```sql
SELECT * FROM CARTAO;
```
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.1/9.1.5.png "Tabela Cartão") <br>

```sql
SELECT * FROM LOCAL_BUS;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.1/9.1.6.png "Tabela Local_Bus") <br>

```sql
SELECT * FROM HISTORICO_SALDO;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.1/9.1.7.png "Tabela Historico_Saldo") <br>

```sql
SELECT * FROM PGT_PASSAGEM;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.1/9.1.8.png "Tabela Pgt_Passagem") <br>


#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>

```sql
SELECT * FROM COLETIVO WHERE PARTIDA = 'T. JACARAIPE';
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%20-Prints/Consultas%209.2.1.jpg "9.2 Consulta 1") <br>

```sql
SELECT COD_PESSOA,NOME_PESSOA,DATA_NASC FROM PESSOA WHERE COD_MODALIDADE = 2;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%20-Prints/Consultas%209.2.2.jpg "9.2 Consulta 2") <br>

```sql
SELECT NOME,CPF,VENCIMENTO,COD_BANDEIRA FROM CARTAO WHERE COD_BANDEIRA = 2 OR COD_BANDEIRA = 4;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%20-Prints/Consultas%209.2.3.jpg "9.2 Consulta 3") <br>

```sql
SELECT COD_PESSOA,SALDO, ULTIMA_COMPRA FROM HISTORICO_SALDO WHERE LIB_PROX_COMPRA >'2017/07/07' AND LIB_PROX_COMPRA <= '2017/08/21';
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%20-Prints/Consultas%209.2.4.jpg "9.2 Consulta 4") <br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>

```sql
select * from HISTORICO_SALDO where SALDO is not null;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.3/IS%20NOT%20NULL.png "9.3 consulta 1") <br>

```sql
select * from PGT_PASSAGEM where SALDO_ANTERIOR<=80;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.3/PGT_PASSAGEM%20where%20SALDO_ANTERIOR30%20and%20SALDO_ANTERIOR80.png "9.3 consulta 2") <br>

```sql
select NOME_PESSOA as Cliente, COD_MODALIDADE as "Atual modalidade", CPF from PESSOA;
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.3/select%20NOME_PESSOA%20as%20Cliente%20COD_MODALIDADE%20as%20Atual%20modalidade%20CPF%20from%20PESSOA.png "9.3 consulta 3") <br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>

```sql
select * from PESSOA where NOME_PESSOA like 'L%';
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.4/ALTERNATIVO1_select%20%20from%20PESSOA%20where%20NOME_PESSOA%20like%20'L%25'.png?raw=true "9.4 consulta 1") <br>

```sql
select * from PESSOA where NOME_PESSOA ilike '%La%';
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.4/select%20from%20PESSOA%20where%20NOME_PESSOA%20ilike%20'%25La%25'.png "9.4 consulta 2") <br>

```sql
select * from PESSOA where NOME_PESSOA like '_a%';
``` 
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Consultas%20-%20Prints/Consultas%209.4/select%20from%20PESSOA%20where%20NOME_PESSOA%20like%20'_a%25'.png "9.4 consulta 3") <br>

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Todas Junções)<br>
        Entrega até este ponto em: (Data a ser definida)
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Todas Possíveis)<br>
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>
        Entrega até este ponto em: (Data a ser definida)
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
### 11	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 12   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
### 13   TRABALHO DE MINERAÇÃO DE DADOS
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) atualização da documentação do trabalho incluindo a mineração de dados
        
### 13  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/

### 14 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.
    
### OBSERVAÇÕES IMPORTANTES

#### Em tese todos os arquivos do trabalho devem ser compartilhados no git 
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.



