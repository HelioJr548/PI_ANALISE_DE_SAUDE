-- Inserções na tabela doença
INSERT INTO doenca (nome, descricao) VALUES
  ('Gripe', 'Infecção viral comum causando febre e dor de garganta.'),
  ('Fratura', 'Osso quebrado devido a um acidente.'),
  ('Hipertensão', 'Pressão arterial elevada, muitas vezes relacionada ao estresse.');

-- Inserções na tabela equipe_saude
INSERT INTO equipe_saude (nome, cargo, especialidade) VALUES
  ('Dr. Smith', 'Médico', 'Cardiologista'),
  ('Enfermeira Johnson', 'Enfermeira', 'Cuidados Intensivos'),
  ('Dr. Garcia', 'Cirurgião', 'Ortopedia');

-- Inserções na tabela paciente
-- Inserção de paciente com CPF não formatado
INSERT INTO paciente (nome, idade, cpf, genero, endereco) VALUES 
('Fulano', 30, '12545678900', 'MASCULINO', 'Rua A, 123'),
-- Inserção de paciente com CPF formatado corretamente
('Ciclano', 25, '123.456.789-00', 'FEMININO', 'Rua B, 456'),
('Beltrano', 40, '789.987.654-32', 'OUTRO', 'Rua C, 789');


-- Inserções na tabela tratamento
INSERT INTO tratamento (nome, descricao) VALUES
  ('Fisioterapia', 'Reabilitação física para recuperação de lesões'),
  ('Medicação para gripe', 'Antiviral para tratar sintomas gripais'),
  ('Cirurgia de Fratura', 'Procedimento cirúrgico para reparar ossos quebrados');

-- Inserções na tabela registro_medico
INSERT INTO registro_medico (data_registro, paciente_id, tratamento_id, doenca_id, equipe_saude_id) VALUES
  ('2023-11-01 10:10:00', 1, 1, 1, 1),
  ('2023-11-02 11:30:00', 2, 2, 2, 2),
  ('2023-11-03 09:45:00', 3, 3, 3, 3);
