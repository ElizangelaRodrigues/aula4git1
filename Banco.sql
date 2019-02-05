--Para iniciar Banco de Dados--
mysql -u root

--Criar banco de dados--
--O ";" é o delimitador.--
create database aula1;

-- Visualisar os bancos existentes--
show databases;

--conectar--
use aula1;

--apagar banco de dados--
drop database aula1;

Create Table Usuario(
	COD INT,
	NOME VARCHAR(40),
	LOGIN VARCHAR(40),
	SENHA VARCHAR(40),
	PERFIL ENUM('ADM','USER')
);
--Iserir dados na tabela--
INSERT INTO USUARIO VALUES
(100,'ANA','123','LALLA','ADM');

INSERT INTO USUARIO VALUES
(110,'PEDRO','PEDRO','1990','USER');

INSERT INTO USUARIO VALUES
(120,'Ana Carolina','ana',md5('12345'),'adm');


--VISUALIZAR DADOS NA TABELA--
SELECT * FROM USUARIO;
SELECT NOME,SENHA FROM USUARIO;

--Para entrar novamente no arquivo--
mysql -u root