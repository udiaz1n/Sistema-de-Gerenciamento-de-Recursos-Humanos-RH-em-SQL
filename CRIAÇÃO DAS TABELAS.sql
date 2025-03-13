
-- CRIAÇÃO DAS TABELAS





-- Criação da tabela Departamentos
CREATE TABLE Departamentos (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Cargos
CREATE TABLE Cargos (
    id_cargo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL
);

-- Criação da tabela Funcionarios
CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    id_departamento INT,
    id_cargo INT,
    salario DECIMAL(10, 2),
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento),
    FOREIGN KEY (id_cargo) REFERENCES Cargos(id_cargo)
);

-- Criação da tabela Historico_Salarios
CREATE TABLE Historico_Salarios (
    id_historico INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT,
    salario_anterior DECIMAL(10, 2),
    salario_novo DECIMAL(10, 2),
    data_alteracao DATE,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario)
);
