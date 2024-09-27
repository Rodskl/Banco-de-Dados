create table Cliente (
	IDCLIENTE int primary key auto_increment,
	NOME varchar(30) not null,
	SEXO enum('M','F') not null,
	EMAIL varchar(50) unique,
	CPF varchar(15) unique
);

CREATE TABLE Endereco(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT, 
	RUA VARCHAR(30) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY (ID_CLIENTE)
	REFERENCES CLIENTE (IDCLIENTE)
);

create table Telefone (
	IDTELEFONE int primary key auto_increment,
	TIPO enum('RES','COM','CEL') not null,
	NUMERO varchar(10) not null,
	ID_CLIENTE INT, 
	FOREIGN KEY (ID_CLIENTE)
	REFERENCES CLIENTE (IDCLIENTE)
);
