
-- EXEMPLOS DE CONSULTA





SELECT
    f.nome AS Nome_Funcionario,
    d.nome AS Nome_Departamento,
    c.nome AS Nome_Cargo,
    f.salario AS Salario_Atual,
    hs.salario_anterior AS Salario_Anterior,
    hs.salario_novo AS Salario_Novo,
    hs.data_alteracao AS Data_Alteracao
FROM
    Funcionarios f
JOIN
    Departamentos d ON f.id_departamento = d.id_departamento
JOIN
    Cargos c ON f.id_cargo = c.id_cargo
LEFT JOIN
    Historico_Salarios hs ON f.id_funcionario = hs.id_funcionario
WHERE
    f.salario > (SELECT AVG(salario) FROM Funcionarios)
ORDER BY
    f.nome, hs.data_alteracao DESC;