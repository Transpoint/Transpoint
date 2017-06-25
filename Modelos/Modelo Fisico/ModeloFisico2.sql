-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE PESSOA (
cod_pessoa SERIAL PRIMARY KEY,
cod_saldo SERIAL,
nome_pessoa varchar(50),
cpf varchar(11),
data_nasc Date
);

CREATE TABLE PESSOA_MODALIDADE (
cod_modalidade SERIAL,
cod_pessoa SERIAL,
FOREIGN KEY(cod_pessoa) REFERENCES PESSOA (cod_pessoa)
);

CREATE TABLE MODALIDADE (
cod_modalidade SERIAL PRIMARY KEY,
nome_modalidade varchar(50),
limite_uso INT
);

CREATE TABLE PGT_PASSAGEM (
cod_pagamento SERIAL PRIMARY KEY,
cod_pessoa SERIAL,
cod_localizacao SERIAL,
saldo_anterior Numeric,
data Date,
FOREIGN KEY(cod_pessoa) REFERENCES PESSOA (cod_pessoa)
);

CREATE TABLE HISTORICO_SALDO (
cod_saldo SERIAL PRIMARY KEY,
cod_cartao SERIAL,
ultima_compra Date,
lib_prox_compra Date,
saldo Numeric
);

CREATE TABLE BANDEIRA_CARTAO (
cod_cartao SERIAL,
cod_bandeira SERIAL
);

CREATE TABLE CARTAO (
cod_cartao SERIAL PRIMARY KEY,
cpf varchar(11),
vencimento Date,
cvv varchar(3),
nome varchar(50),
numero_cartao varchar(16)
);

CREATE TABLE BANDEIRA (
cod_bandeira SERIAL PRIMARY KEY,
nome_bandeira varchar(20)
);

CREATE TABLE LOCAL_BUS (
cod_localizacao SERIAL PRIMARY KEY,
cod_coletivo SERIAL,
coordenadas varchar(50)
);

CREATE TABLE COLETIVO (
cod_coletivo SERIAL PRIMARY KEY,
partida varchar(50),
destino varchar(50),
linha varchar(4)
);

ALTER TABLE PESSOA ADD FOREIGN KEY(cod_saldo) REFERENCES HISTORICO_SALDO (cod_saldo);
ALTER TABLE PESSOA_MODALIDADE ADD FOREIGN KEY(cod_modalidade) REFERENCES MODALIDADE (cod_modalidade);
ALTER TABLE PGT_PASSAGEM ADD FOREIGN KEY(cod_localizacao) REFERENCES LOCAL_BUS (cod_localizacao);
ALTER TABLE HISTORICO_SALDO ADD FOREIGN KEY(cod_cartao) REFERENCES CARTAO (cod_cartao);
ALTER TABLE BANDEIRA_CARTAO ADD FOREIGN KEY(cod_cartao) REFERENCES CARTAO (cod_cartao);
ALTER TABLE BANDEIRA_CARTAO ADD FOREIGN KEY(cod_bandeira) REFERENCES BANDEIRA (cod_bandeira);
ALTER TABLE LOCAL_BUS ADD FOREIGN KEY(cod_coletivo) REFERENCES COLETIVO (cod_coletivo);
