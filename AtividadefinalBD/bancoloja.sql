CREATE DATABASE loja;
USE loja;

CREATE TABLE categoria(
cd INT PRIMARY KEY
AUTO_INCREMENT,
nome VARCHAR(100)
);

CREATE TABLE produto(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR( 120),
qtd INT(10),
valor DECIMAL(10,2),
id_categoria INT,
FOREIGN KEY (id_categoria) REFERENCES categoria(cd)
);

CREATE TABLE vendedor(
cd INT PRIMARY KEY
AUTO_INCREMENT,
nome VARCHAR(100),
salario DECIMAL(10,2)
);

CREATE TABLE estado(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
sigla CHAR(2)
);

CREATE TABLE cidade(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
id_estado INT,
FOREIGN KEY (id_estado) REFERENCES estado(cd)
);

CREATE TABLE cliente(
cd INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100),
telefone VARCHAR(100),
sexo CHAR(1),
status CHAR(8),
id_cidade INT,
FOREIGN KEY (id_cidade) REFERENCES cidade(cd)
);

CREATE TABLE pedido(
cd INT PRIMARY KEY AUTO_INCREMENT,
id_cliente INT,
id_vendedor INT,
dt_pedido DATE,
vl_total DECIMAL(10,2),
FOREIGN KEY (id_cliente) REFERENCES cliente(cd),
FOREIGN KEY (id_vendedor) REFERENCES vendedor(cd)
);

CREATE TABLE item_pedido(
cd INT PRIMARY KEY AUTO_INCREMENT,
id_pedido INT,
id_produto INT,
qt_produto INT,
vl_unitario DECIMAL(10,2),
FOREIGN KEY (id_pedido) REFERENCES pedido(cd),
FOREIGN KEY (id_produto) REFERENCES produto(cd)
);

INSERT INTO categoria VALUES (DEFAULT, 'Elétrica');
INSERT INTO categoria VALUES (DEFAULT, 'Hidráulica');
INSERT INTO categoria VALUES (DEFAULT, 'Ferragem');
INSERT INTO categoria VALUES (DEFAULT, 'Construção');
INSERT INTO categoria VALUES (DEFAULT, 'Ferramentas');

INSERT INTO produto VALUES (DEFAULT, 'Regua de tomadas', '10', '19.00', '1');
INSERT INTO produto VALUES (DEFAULT, 'Fio de cobre', '30', '239.90', '1');
INSERT INTO produto VALUES (DEFAULT, 'Interruptor', '60', '6.99', '1');
INSERT INTO produto VALUES (DEFAULT, 'Disjuntor', '15', '19.80', '1');
INSERT INTO produto VALUES (DEFAULT, 'Disjuntor Azul', '13', '19.80', '1');


INSERT INTO produto VALUES (DEFAULT, 'Registro', '20', '17.80', '2');
INSERT INTO produto VALUES (DEFAULT, 'Sifão', '12', '5.90', '2');
INSERT INTO produto VALUES (DEFAULT, 'Válvula', '22', '27.80', '2');
INSERT INTO produto VALUES (DEFAULT, 'Cola cano', '45', '5.80', '2');
INSERT INTO produto VALUES (DEFAULT, 'Joelho 100mm', '14', '7.99', '2');

INSERT INTO produto VALUES (DEFAULT, 'Ferro 10mm', '15', '62.99', '3');
INSERT INTO produto VALUES (DEFAULT, 'Estribo', '52', '5.99', '3');
INSERT INTO produto VALUES (DEFAULT, 'Vergalhão', '7', '60.00', '3');
INSERT INTO produto VALUES (DEFAULT, 'Treliça', '17', '50.80', '3');
INSERT INTO produto VALUES (DEFAULT, 'Cantoneira', '8', '39.99', '3');

INSERT INTO produto VALUES (DEFAULT, 'Ferro 10mm', '15', '62.99', '3');
INSERT INTO produto VALUES (DEFAULT, 'Estribo', '52', '5.99', '3');
INSERT INTO produto VALUES (DEFAULT, 'Vergalhão', '7', '60.00', '3');
INSERT INTO produto VALUES (DEFAULT, 'Treliça', '17', '50.80', '3');
INSERT INTO produto VALUES (DEFAULT, 'Cantoneira', '8', '39.99', '3');

INSERT INTO produto VALUES (DEFAULT, 'Tijolo baiano', '6000', '0.70', '4');
INSERT INTO produto VALUES (DEFAULT, 'Saco de cimento', '100', '30.00', '4');
INSERT INTO produto VALUES (DEFAULT, 'Piso', '50', '60.00', '4');
INSERT INTO produto VALUES (DEFAULT, 'Cano de PVC', '80', '55.0', '4');
INSERT INTO produto VALUES (DEFAULT, 'Argamassa', '40', '29.99', '4');

INSERT INTO produto VALUES (DEFAULT, 'Alicate', '16', '25.99', '5');
INSERT INTO produto VALUES (DEFAULT, 'Nível', '5', '14.99', '5');
INSERT INTO produto VALUES (DEFAULT, 'Esquadro', '7', '14.00', '5');
INSERT INTO produto VALUES (DEFAULT, 'Caixa de ferramentas', '19', '500.00', '5');
INSERT INTO produto VALUES (DEFAULT, 'Parafusadeira', '3', '299.99', '5');

INSERT INTO vendedor VALUES (DEFAULT, 'Camilla Oliveira Rodrigues', '2900.00');
INSERT INTO vendedor VALUES (DEFAULT, 'Maria Eduarda Lima', '2400.00');
INSERT INTO vendedor VALUES (DEFAULT, 'Ana Laura Silva', '3900.00');

INSERT INTO estado VALUES (DEFAULT, 'Líquido', 'SP');
INSERT INTO estado VALUES (DEFAULT, 'Sólido', 'RJ');
INSERT INTO estado VALUES (DEFAULT, 'Gasoso', 'MG');

INSERT INTO cidade VALUES (DEFAULT, 'Peruíbe', '1');
INSERT INTO cidade VALUES (DEFAULT, 'Santos', '1');
INSERT INTO cidade VALUES (DEFAULT, 'Pedro de toledo', '1');

INSERT INTO cidade VALUES (DEFAULT, 'Niterói', '2');
INSERT INTO cidade VALUES (DEFAULT, 'São Gonçalo', '2');
INSERT INTO cidade VALUES (DEFAULT, 'Mesquita', '2');

INSERT INTO cidade VALUES (DEFAULT, 'Ouro preto', '3');
INSERT INTO cidade VALUES (DEFAULT, 'Uberlândia', '3');
INSERT INTO cidade VALUES (DEFAULT, 'Bias Fortes', '3');

INSERT INTO cliente VALUES (DEFAULT, 'Beatriz', '13 111111111', 'F', 'ATIVO', '1');
INSERT INTO cliente VALUES (DEFAULT, 'Davi', '13 222222222', 'M', 'ATIVO', '2');
INSERT INTO cliente VALUES (DEFAULT, 'Vitor', '13 333333333', 'M', 'INATIVO', '3');
INSERT INTO cliente VALUES (DEFAULT, 'Ana Carolina', '13 444444444', 'F', 'ATIVO', '4');
INSERT INTO cliente VALUES (DEFAULT, 'Herika', '13 555555555', 'F', 'INATIVO', '5');
INSERT INTO cliente VALUES (DEFAULT, 'Guilherme', '13 666666666', 'M', 'ATIVO', '6');
INSERT INTO cliente VALUES (DEFAULT, 'Gabriel', '13 777777777', 'M', 'ATIVO', '7');
INSERT INTO cliente VALUES (DEFAULT, 'Maia', '13 888888888', 'F', 'INATIVO', '8');
INSERT INTO cliente VALUES (DEFAULT, 'Leonardo', '13 999999999', 'M', 'ATIVO', '9');

INSERT INTO pedido VALUES (DEFAULT, '1', '1', '1992-07-17', '500.00');
INSERT INTO pedido VALUES (DEFAULT, '2', '1', '1992-08-17', '400.00');
INSERT INTO pedido VALUES (DEFAULT, '3', '1', '2022-11-30', '300.00');
INSERT INTO pedido VALUES (DEFAULT, '4', '1', '2022-11-17', '150.00');
INSERT INTO pedido VALUES (DEFAULT, '5', '2', '1992-11-17', '600.00');
INSERT INTO pedido VALUES (DEFAULT, '6', '2', '1992-12-17', '700.00');
INSERT INTO pedido VALUES (DEFAULT, '7', '2', '1992-01-17', '800.00');
INSERT INTO pedido VALUES (DEFAULT, '8', '3', '1992-02-17', '900.00');
INSERT INTO pedido VALUES (DEFAULT, '9', '3', '1992-03-17', '1200.00');
INSERT INTO pedido VALUES (DEFAULT, '5', '3', '1992-04-17', '3500.00');

INSERT INTO item_pedido VALUES (DEFAULT, '1', '1', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '1', '2', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '2', '3', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '2', '4', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '3', '5', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '3', '6', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '4', '7', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '4', '8', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '5', '9', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '5', '10', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '6', '11', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '6', '12', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '7', '13', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '7', '14', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '8', '15', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '8', '16', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '9', '17', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '9', '18', '1', '100.00');

INSERT INTO item_pedido VALUES (DEFAULT, '10', '19', '1', '100.00');
INSERT INTO item_pedido VALUES (DEFAULT, '10', '20', '1', '100.00');

SELECT * FROM cliente WHERE status = 'online' ORDER BY nome;

SELECT * FROM cliente WHERE status = 'ofline';

SELECT * FROM produto WHERE id_categoria = '2';

SELECT * FROM produto WHERE valor <= '200.00';

SELECT * FROM cliente WHERE sexo = 'F';

SELECT * FROM pedido WHERE MONTH(dt_pedido) = MONTH(NOW()) AND YEAR(dt_pedido) = YEAR(NOW());

SELECT * FROM pedido WHERE dt_pedido = CURDATE();

SELECT SUM(vl_total) FROM pedido WHERE MONTH(dt_pedido) = MONTH(NOW()) AND YEAR(dt_pedido) = YEAR(NOW());

SELECT * FROM pedido WHERE id_cliente ='2';

SELECT * FROM pedido WHERE id_cliente ='2';

SELECT COUNT(*), v.nome FROM pedido p, vendedor v WHERE p.id_vendedor = '1';

SELECT COUNT(*) FROM pedido AS p LEFT OUTER JOIN vendedor AS v on v.cd = p.id_vendedor;

SELECT nome FROM produto WHERE qtd < '50';

SELECT min(valor) FROM produto;

SELECT max(valor) FROM produto;