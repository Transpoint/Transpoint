-- 9.5.1
UPDATE PESSOA SET cod_modalidade = 1 WHERE data_nasc < '01-01-1999' AND cod_modalidade = 2;
SELECT * FROM PESSOA WHERE data_nasc < '01-01-1999';

-- 9.5.2
UPDATE MODALIDADE SET nome_modalidade = 'Estudante Gratuito' WHERE cod_modalidade = 3;
SELECT cod_modalidade CODIGO, nome_modalidade MODALIDADE FROM MODALIDADE;

-- 9.5.3
UPDATE PESSOA SET nome_pessoa = 'André Martins', data_nasc = '05-05-1997', cod_modalidade = 2 WHERE cod_pessoa = 1;
SELECT * FROM PESSOA WHERE cod_pessoa = 1;

-- 9.5.4
DELETE FROM HISTORICO_SALDO hs WHERE hs.saldo > 50;
SELECT * FROM HISTORICO_SALDO;
