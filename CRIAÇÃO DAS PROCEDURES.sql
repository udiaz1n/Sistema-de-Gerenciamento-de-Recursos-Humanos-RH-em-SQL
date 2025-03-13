
-- CRIAÇÃO DAS PROCEDURES




DELIMITER //

-- Stored procedure para promover um funcionário
CREATE PROCEDURE promover_funcionario(IN funcionario_id INT, IN novo_cargo_id INT, IN novo_salario DECIMAL(10, 2))
BEGIN
    DECLARE salario_atual DECIMAL(10, 2);

    START TRANSACTION;

    SELECT salario INTO salario_atual FROM Funcionarios WHERE id_funcionario = funcionario_id FOR UPDATE;

    INSERT INTO Historico_Salarios (id_funcionario, salario_anterior, salario_novo, data_alteracao)
    VALUES (funcionario_id, salario_atual, novo_salario, CURDATE());

    UPDATE Funcionarios
    SET id_cargo = novo_cargo_id, salario = novo_salario
    WHERE id_funcionario = funcionario_id;

    COMMIT;
END //

DELIMITER ;