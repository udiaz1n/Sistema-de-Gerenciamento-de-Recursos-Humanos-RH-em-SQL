
-- INSERINDO DADOS




-- Inserindo departamentos
INSERT INTO Departamentos (nome) VALUES
('Recursos Humanos'),
('Desenvolvimento de Software'),
('Marketing');

-- Inserindo cargos
INSERT INTO Cargos (nome) VALUES
('Analista de RH'),
('Desenvolvedor Júnior'),
('Desenvolvedor Sênior'),
('Analista de Marketing');

-- Inserindo funcionários
INSERT INTO Funcionarios (nome, data_nascimento, id_departamento, id_cargo, salario) VALUES
('João Silva', '1990-05-15', 1, 1, 3500.00),
('Maria Souza', '1985-10-20', 2, 3, 7000.00),
('Carlos Oliveira', '1992-08-25', 3, 4, 4000.00);
