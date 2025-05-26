CREATE DATABASE ProdutoFuncionarioV2;
USE ProdutoFuncionarioV2;

CREATE TABLE produto (
pk_produto INT PRIMARY KEY auto_increment,
nome_produto VARCHAR(45),
descricao_produto VARCHAR(45)
);

INSERT INTO produto (nome_produto, descricao_produto)
VALUE ("Tesoura","Marca: TRIS. Cor: Vermelha. Sem ponta"),
("Caneta", "Marca: Compactor. Cor:Azul"),
("Lápis","Cor preta com borracha cor azul"),
("Borracha","Branca");

SELECT * FROM produto;

CREATE TABLE funcionario(
pk_funcionario INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
data_nascimento DATE
);

INSERT INTO funcionario (nome,data_nascimento)
VALUES ("Thaynara","1995-02-09"),
("Marco","2007-04-06");

SELECT * FROM funcionario;

ALTER TABLE produto
ADD COLUMN fk_funcionario INT;

ALTER TABLE produto 
ADD CONSTRAINT fk_produto_funcionario
FOREIGN KEY (fk_funcionario)
REFERENCES funcionario(fk_funcionario);

SELECT * FROM produto;

UPDATE produto
SET fk_funcionario = 1
WHERE pk_produto > 2;