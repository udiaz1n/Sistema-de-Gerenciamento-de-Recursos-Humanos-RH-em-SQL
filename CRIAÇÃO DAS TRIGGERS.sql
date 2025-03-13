
-- CRIAÇÃO DAS TRIGGERS




DELIMITER //

-- Trigger para registrar alterações de salário
CREATE TRIGGER registrar_alteracao_salario
AFTER UPDATE ON Funcionarios
FOR EACH ROW
BEGIN
    IF NEW.salario <> OLD.salario THEN
        INSERT INTO Historico_Salarios (id_funcionario, salario_anterior, salario_novo, data_alteracao)
        VALUES (NEW.id_funcionario, OLD.salario, NEW.salario, CURDATE());
    END IF;
END //

DELIMITER ;