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
Neste ponto a codificação não e necessária, somente as ideias de telas devem ser criadas, o princípio aqui é pensar na criação da interface para identificar possíveis informações a serem armazenadas ou descartadas.
https://github.com/Transpoint/TranspointProject/blob/master/Transpoint.pdf<br>

#### 4.1 TABELA DE DADOS DO SISTEMA:
   <a href="http://imgur.com/EIYieOr"><img src="http://i.imgur.com/EIYieOr.png" title="source: imgur.com" /></a>
   
### 5.MODELO CONCEITUAL<br>
    A) NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Modelo%20ER.jpg?raw=true "Modelo Conceitual")
    
    B) NOTACAO UML (Caso esteja fazendo a disciplina de analise)
    C) QUALIDADE 
        Garantir que a semântica dos atributos seja clara no esquema
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 DECISÕES DE PROJETO
    [atributo]: [descrição da decisão]
    
    EXEMPLO:
    a) Campo endereço: em nosso projeto optamos por um campo multivalorado e composto, pois a empresa 
    pode possuir para cada departamento mais de uma localização... 
    b) justifique!

#### 5.3 DESCRIÇÃO DOS DADOS 
    [objeto]: [descrição do objeto]
    
    EXEMPLO:
    CLIENTE: Tabela que armazena as informações relativas ao cliente<br>
    CPF: campo que armazena o número de Cadastro de Pessoa Física para cada cliente da empresa.<br>


### 6	MODELO LÓGICO<br>
        a) inclusão do modelo lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)
![Alt text](https://github.com/Transpoint/TranspointProject/blob/master/Tabelas%20DB.png?raw=true "Modelo Conceitual")

### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas DDL 
        (criação de tabelas, alterações, etc..)
        
        
        
        Entrega até este ponto em: (Data a ser definida)

### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a :
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto


#### 8.2 INCLUSÃO DO SCRIPT DE INSERÇÃO DOS DADOS
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        b) inclusão das instruções para execução de outros procedimentos necessários (caso existam)

#### 8.3 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
        a) Junção dos scripts anteriores em um único script 
        (tabelas e estruturas de dados + dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        
        
        Entrega até este ponto em: (Data a ser definida)


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
        Entrega até este ponto em: (Data a ser definida)
#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3) <br>
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



