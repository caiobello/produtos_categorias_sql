CREATE DATABASE PRODUTOBD;

CREATE TABLE PRODUTOBD.PRODUTO (
  ID           BIGINT        NOT NULL AUTO_INCREMENT,
  NOME         VARCHAR(100)  NOT NULL,
  DESCRICAO    VARCHAR(1000) NULL,
  PRECO_COMPRA DECIMAL(9,2)  NOT NULL,
  PRECO_VENDA  DECIMAL(9,2)  NOT NULL,
  QUANTIDADE   INT           NOT NULL DEFAULT 0,
  DISPONIVEL   BOOL          NOT NULL DEFAULT TRUE,       
  DT_CADASTRO  TIMESTAMP     NOT NULL,
  CONSTRAINT PK_PRODUTO PRIMARY KEY (ID)
);

CREATE TABLE PRODUTOBD.CATEGORIA (
  ID   INT          NOT NULL AUTO_INCREMENT,
  NOME VARCHAR(100) NOT NULL,
  CONSTRAINT PK_CATEGORIA PRIMARY KEY (ID),
  CONSTRAINT UC_NOME UNIQUE (NOME)
);

CREATE TABLE PRODUTOBD.PRODUTO_CATEGORIA (
    ID_PRODUTO   BIGINT NOT NULL,
    ID_CATEGORIA INT    NOT NULL,
    CONSTRAINT FK_PRODUTO FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTOBD.PRODUTO(ID),
    CONSTRAINT FK_CATEGORIA FOREIGN KEY (ID_CATEGORIA) REFERENCES PRODUTOBD.CATEGORIA(ID)
);

-- GRANT ALL PRIVILEGES ON PRODUTOBD.* TO 'tads';

INSERT INTO PRODUTOBD.CATEGORIA(NOME) VALUES ("Categoria 1");
INSERT INTO PRODUTOBD.CATEGORIA(NOME) VALUES ("Categoria 2");
INSERT INTO PRODUTOBD.CATEGORIA(NOME) VALUES ("Categoria 3");
INSERT INTO PRODUTOBD.CATEGORIA(NOME) VALUES ("Categoria 4");
INSERT INTO PRODUTOBD.CATEGORIA(NOME) VALUES ("Categoria 5");