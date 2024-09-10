-- Criação da tabela Cliente
CREATE TABLE Cliente (
    id       SERIAL       PRIMARY KEY,
    nome     VARCHAR(100) NOT NULL,
    email    VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    endereco TEXT
);

-- Criação da tabela Pedido
CREATE TABLE Pedido (
    id          SERIAL        PRIMARY KEY,
    cliente_id  INT           NOT NULL,
    data_pedido TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status      VARCHAR(20)   NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_cliente
        FOREIGN KEY(cliente_id) 
        REFERENCES Cliente(id)
);

-- Criação da tabela Item_Pedido
CREATE TABLE Item_Pedido (
    id             SERIAL        PRIMARY KEY,
    pedido_id      INT           NOT NULL,
    produto_id     INT           NOT NULL,
    quantidade     INT           NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT fk_pedido
        FOREIGN KEY(pedido_id) 
        REFERENCES Pedido(id)
);