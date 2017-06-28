-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE BANDEIRA (
cod_bandeira SERIAL PRIMARY KEY,
nome_bandeira varchar(20)
)

CREATE TABLE CARTAO (
cod_cartao SERIAL PRIMARY KEY,
cpf varchar(11),
vencimento Date,
cvv varchar(3),
nome varchar(50),
numero_cartao varchar(16)
)

CREATE TABLE PGT_PASSAGEM (
cod_pagamento SERIAL PRIMARY KEY,
cod_pessoa SERIAL,
cod_localizacao SERIAL,
saldo_anterior Numeric,
data Date
)

CREATE TABLE PESSOA (
cod_pessoa SERIAL PRIMARY KEY,
cod_saldo SERIAL,
cod_modalidade SERIAL,
nome_pessoa varchar(50),
cpf varchar(11),
data_nasc Date
)

CREATE TABLE BANDEIRA_CARTAO (
cod_cartao SERIAL,
cod_bandeira SERIAL,
FOREIGN KEY(cod_cartao) REFERENCES CARTAO (cod_cartao),
FOREIGN KEY(cod_bandeira) REFERENCES BANDEIRA (cod_bandeira)
)

CREATE TABLE LOCAL_BUS (
cod_localizacao SERIAL PRIMARY KEY,
cod_coletivo SERIAL,
coordenadas varchar(50)
)

CREATE TABLE COLETIVO (
cod_coletivo SERIAL PRIMARY KEY,
partida varchar(50),
destino varchar(50),
linha varchar(4)
)

CREATE TABLE HISTORICO_SALDO (
cod_saldo SERIAL PRIMARY KEY,
cod_cartao SERIAL,
ultima_compra Date,
lib_prox_compra Date,
saldo Numeric,
FOREIGN KEY(cod_cartao) REFERENCES CARTAO (cod_cartao)
)

CREATE TABLE MODALIDADE (
cod_modalidade SERIAL PRIMARY KEY,
nome_modalidade varchar(50),
limite_uso INT
)

ALTER TABLE PGT_PASSAGEM ADD FOREIGN KEY(cod_pessoa) REFERENCES PESSOA (cod_pessoa)
ALTER TABLE PGT_PASSAGEM ADD FOREIGN KEY(cod_localizacao) REFERENCES LOCAL_BUS (cod_localizacao)
ALTER TABLE PESSOA ADD FOREIGN KEY(cod_saldo) REFERENCES HISTORICO_SALDO (cod_saldo)
ALTER TABLE PESSOA ADD FOREIGN KEY(cod_modalidade) REFERENCES MODALIDADE (cod_modalidade)
ALTER TABLE LOCAL_BUS ADD FOREIGN KEY(cod_coletivo) REFERENCES COLETIVO (cod_coletivo)
