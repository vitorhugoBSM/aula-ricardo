CREATE TABLE veiculo (
    id INT PRIMARY KEY,
    tipo VARCHAR(50),
    modelo VARCHAR(100)
);

CREATE TABLE entregador (
    cpf VARCHAR(11) PRIMARY KEY,
    nome VARCHAR(100),
    veiculo_id INT,
    FOREIGN KEY (veiculo_id) REFERENCES veiculo(id)
);

INSERT INTO veiculo (id, tipo, modelo) VALUES (10, 'Caminhão', 'Mercedes 710');
INSERT INTO veiculo (id, tipo, modelo) VALUES (20, 'Moto', 'Honda Cargo');

INSERT INTO entregador (cpf, nome, veiculo_id) VALUES ('111', 'Ana Silva', 10);
INSERT INTO entregador (cpf, nome, veiculo_id) VALUES ('222', 'João Souza', 20);
INSERT INTO entregador (cpf, nome, veiculo_id) VALUES ('333', 'Bia Costa', 10);

select * from veiculo;

select nome from entregador;
select cpf from entregador;

select * from veiculo where tipo = 'caminhão';

SELECT e.nome, v.modelo 
FROM entregador e 
INNER JOIN veiculo v ON e.veiculo_id = v.id;

CREATE TABLE item_pedido (
    id_pedido INT,
    sku_produto VARCHAR(50),
    quantidade INT,
    PRIMARY KEY (id_pedido, sku_produto),
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (sku_produto) REFERENCES produto(sku)
);