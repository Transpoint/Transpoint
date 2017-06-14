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
   <a href="https://github.com/Transpoint/TranspointProject/blob/master/dados_transpoint.PNG"><img src="https://github.com/Transpoint/TranspointProject/blob/master/dados_transpoint.PNG" title="Tabela do sistema" /></a>
   
### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/ModeloConceitual.PNG "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
#### 5.1 Validação do Modelo Conceitual
    [IPAO]: [Yan de Paula, Lucas Gomes, Tadeu da Penha, Ewerson Vieira]
    [GeMan]: [Gabriel Marchezi, Helen França, Olavo Curátola]

#### 5.2 DECISÕES DE PROJETO
    
   Campos iniciados com "COD": nos campos destinados ao código, optamos pelo tipo serial funcionando assim como um campo identificador (utilizado como chave primária). <br>
    Campos destinados para "Nome", COL_LINHA, COL_PARTIDA e COL_DESTINO: Foi usado o tipo varchar pois nomes não possuem um tamanho médio/fixo, usando o varchar o tamanho ficaria igual ao nome dentro da 'variável'. <br>
    Campos ULT_COMPRA, PROX_COMPRA, DATA_NASCIMENTO, PAG_DATA: optamos por usar o tipo DATE pois é um padrão para datas, no caso de "ULT_COMPRA/PROX_COMPRA" este tipo é útil para uso de funções para calcular a data que a recarga é liberada.<br>
    Campo Coordenadas:  A utilização de varchar é justificada pela opção de usar coordenadas geográficas para localização dos coletivos ao invés de endereços em si, facilitando a manipulação e evitando conflitos com nomes de ruas iguais em pontos diferentes. <br>
    Campos de Saldo: Optamos usar o tipo Numeric visto que se trata de dinheiro, podendo ter números após a vírgula (centavos). <br>
    Campo Limite_Uso: Cada modalidade tem um número definido de uso do cartão, o  tipo int atende perfeitamente a necessidade. <br>
    Campo CPF: Usamos um varchar para casos em que o CPF seja antigo ou chegue o momento que tenha que ser acrescentado mais um número. <br>
    

#### 5.3 DESCRIÇÃO DOS DADOS 

Tabela PESSOA: Tabela que armazena informações referente aos usuários do aplicativo.<br>
&emsp;	COD_PESSOA: (CHAVE PRIMARIA) Campo que armazena um número único identificador da pessoa.<br>
&emsp;	NOME_PESSOA: Campo que armazena o nome da pessoa.<br>
&emsp;	CPF_PESSOA: Campo que armazena o número de Cadastro de Pessoa Física para cada usuário.<br>
&emsp;	DATA_NASCIMENTO: Campo que armazena a data de nascimento do usuário.<br>
&emsp;	MODALIDADE: Campo que armazena um número que identifica a modalidade da pessoa.<br>
	<br>
Tabela MODALIDADE: Tabela que armazena informações de classes que cada usuário pertence.<br>
&emsp;	COD_MODALIDADE: (CHAVE PRIMÁRIA) Campo que armazena um número único identicador das modalidadee existentes.<br>
&emsp;	NOME_MODALIDADE: Campo que armazena a identificação por nome de cada modalidade.<br>
&emsp;	LIMITE_USO: Campo que armazena a quantidade de utilizações permitidas para cada modalidade.<br>
<br>
Tabela HISTORICO_SALDO: Tabela que armazena informações relevantes do saldo do usuário.<br>
&emsp;	COD_SALDO: (CHAVE PRIMARIA) Campo que armazena um número único identificador do saldo.<br>
&emsp;	LIB_PROX_COMPRA: Campo que armazena a data de liberação da proxima compra.<br>
&emsp;	ULT_COMPRA: Campo que armazena a data da ultima compra efetuada.<br>
&emsp;	SALDO: Campo que armazena o saldo atual do usuário.<br>
<br>
Tabela PGT_PASSAGEM: Tabela que armazena informações relacionadas a passagens pagas.<br>
&emsp;	COD_PAGAMENTO: (CHAVE PRIMARIA) Campo que armazena um número único identificador do pagamento.<br>
&emsp;	COD_PESSOA: Campo que armazena o codigo do cliente, pessoa, que efetuou o pagamento.<br>
&emsp;	SALDO_ANTERIOR: Campo que armazena o saldo antes do pagamento da passagem.<br>
&emsp;	PAG_DATA: Campo que armazena a data do pagamento.<br>
&emsp;	COD_COLETIVO: Campo que armazena informações do ônibus em que foi efetuado o pagamento.<br>
	<br>
Tabela LOCAL_COLETIVO: Tabela que armazena informações da localização dos ônibus.<br>
&emsp;	COD_LOCALIZACAO: (CHAVE PRIMARIA) Campo que armazena um número único identificador do ônibus.<br>
&emsp;	COORDENADAS: Campo que armazena informações de coordenadas do ônibus.<br>
&emsp;	COD_COLETIVO: Campo que armazena informações do ônibus em que foi efetuado o pagamento.<br>
<br>
Tabela COLETIVO: Tabela que armazena informações do ônibus.<br>
&emsp;	COD_COL: Campo que armazena um número único identificador dos ônibus.<br>
&emsp;	COL_LINHA: Campo que armazena o número da linha do ônibus.<br>
&emsp;	COL_PARTIDA: Campo que armazena a partida do ônibus.<br>
&emsp;	COL_DESTINO: Campo que armazena o destino do ônibus.<br>
	<br>
### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Modelo%20Logico.PNG "Modelo Conceitual")

### 7	MODELO FÍSICO<br>
<a href="https://github.com/Transpoint/TranspointProject/blob/master/TRANSPOINT_MODELO_FISICO.sql"> Modelo físico </a><br>
       

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
Geramos os dados de forma aleatória pelo seguinte link: http://pt.fakenamegenerator.com/
Não utilizamos nenhum código previamente pronto e desenvolvemos nosso projeto a partir de situações
cotidianas.


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
<a href="https://github.com/Transpoint/TranspointProject/blob/master/TRANSPOINT_INSERT.sql"> Insert de dados ao modelo físico </a><br>

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
<a href="https://github.com/Transpoint/TranspointProject/blob/master/TRANSPOINT_DATEBASE_AND_BACKUP.sql"> Dados e backup </a><br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/SELECT%20TUDO%20FROM%20PESSOA.png "Tabela Pessoa") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/SELECT%20TUDO%20FROM%20COLETIVO.png "Tabela Coletivo") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/SELECT%20TUDO%20FROM%20MODALIDADE.png "Tabela Modalidade") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/SELECT%20TUDO%20FROM%20HISTORICO_SALDO.png "Tabela Historico_Saldo") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/SELECT%20TUDO%20FROM%20PGT_PASSAGEM.png "Tabela Pgt_Passagem") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/SELECT%20TUDO%20FROM%20LOCAL_COLETIVO.png "Tabela Local_Coletivo") <br>
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.2%20where%20pessoa%201.png "9.2 consulta 1") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.2%20where%20pessoa%202.png "9.2 consulta 2") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.2%20where%20coletivo%201.png "9.2 consulta 3") <br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.3%20historico%20saldo.png "9.3 consulta 1") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.png "9.3 consulta 2") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.3%20concat.png "9.3 consulta 3") <br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.4_1.png "9.4 consulta 1") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.4_2.png "9.4 consulta 2") <br>
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/9.4_3.png "9.4 consulta 3") <br>
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



