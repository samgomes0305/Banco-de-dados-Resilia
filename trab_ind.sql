create database trab_ind;

use trab_ind

CREATE TABLE Tecnologia (
    idTecnologia INT PRIMARY KEY,
    nomeTecnologia VARCHAR(255) NOT NULL
);

CREATE TABLE EmpresaParceira (
    idEmpresaParceira INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(255)
);

CREATE TABLE TecnologiaEmpresa (
    idTecnologiaEmpresa INT PRIMARY KEY,
    idEmpresaParceira INT,
    idTecnologia INT,
    FOREIGN KEY (idEmpresaParceira) REFERENCES EmpresaParceira(idEmpresaParceira),
    FOREIGN KEY (idTecnologia) REFERENCES Tecnologia(idTecnologia)
);

CREATE TABLE Colaborador (
    idColaborador INT PRIMARY KEY,
    nomeColaborador VARCHAR(255) NOT NULL,
    cargo VARCHAR(255),
    idEmpresaParceira INT,
    FOREIGN KEY (idEmpresaParceira) REFERENCES EmpresaParceira(idEmpresaParceira)
);

-- Adicionando registros

INSERT INTO Tecnologia VALUES (1, 'JavaScript');
INSERT INTO Tecnologia VALUES (2, 'Python');
INSERT INTO Tecnologia VALUES (3, 'SEO');
INSERT INTO Tecnologia VALUES (4, 'React');
INSERT INTO Tecnologia VALUES (5, 'Java');

INSERT INTO EmpresaParceira VALUES (1, 'Empresa A', 'Endereço A', '123456789', 'empresaA@email.com');
INSERT INTO EmpresaParceira VALUES (2, 'Empresa B', 'Endereço B', '987654321', 'empresaB@email.com');
INSERT INTO EmpresaParceira VALUES (3, 'Empresa C', 'Endereço C', '111111111', 'empresaC@email.com');
INSERT INTO EmpresaParceira VALUES (4, 'Empresa D', 'Endereço D', '222222222', 'empresaD@email.com');

INSERT INTO TecnologiaEmpresa VALUES (1, 1, 1);
INSERT INTO TecnologiaEmpresa VALUES (2, 1, 2);
INSERT INTO TecnologiaEmpresa VALUES (3, 2, 4);
INSERT INTO TecnologiaEmpresa VALUES (4, 3, 5);

INSERT INTO Colaborador VALUES (1, 'João', 'Desenvolvedor', 1);
INSERT INTO Colaborador VALUES (2, 'Maria', 'Analista de Dados', 2);
INSERT INTO Colaborador VALUES (3, 'Carlos', 'Front-end Developer', 3);
INSERT INTO Colaborador VALUES (4, 'Ana', 'Java Developer', 4);
