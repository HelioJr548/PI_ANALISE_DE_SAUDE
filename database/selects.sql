-- Busca Simples
SELECT * FROM doença;
SELECT * FROM equipe_saude;
SELECT * FROM paciente;
SELECT * FROM tratamento;


-- Buscar Tratamento Específico:
SELECT *
FROM tratamento
WHERE nome = 'Fisioterapia'; 

-- Buscar Membro da Equipe de Saúde Específico:
SET @nome_equipe_saude := 'Smith';

SELECT *
FROM equipe_saude
WHERE nome LIKE CONCAT('%', @nome_equipe_saude, '%');

-- Buscar Paciente pelo CPF:
SELECT *
FROM paciente
WHERE cpf = '123.456.789-00'; 

-- Buscar Registro Médico Específico:
SELECT *
FROM registro_medico
WHERE id = 1; 

-- Consulta para Ver Consultas Agendadas para um Determinado Dia:
SELECT *
FROM registro_medico
WHERE DATE(data_registro) = '2023-12-01'; 

-- Consulta para Histórico de Tratamentos por Paciente:
SELECT p.nome AS paciente, d.nome AS doenca, t.nome AS tratamento, rm.data_registro
FROM registro_medico rm
JOIN paciente p ON rm.paciente_id = p.id
JOIN doença d ON rm.doença_id = d.id
JOIN tratamento t ON rm.tratamento_id = t.id
WHERE p.id = 1; 

-- Consultar Pacientes com Tratamento de uma Doença Específica:
SELECT p.nome AS nome_paciente, d.nome AS doenca, r.data_registro
FROM registro_medico r
JOIN paciente p ON r.paciente_id = p.id
JOIN doença d ON r.doença_id = d.id
WHERE d.nome = 'Gripe'; 

