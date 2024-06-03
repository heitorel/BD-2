# Queries para criação do banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Populando tabela de Médicos
INSERT INTO MEDICO (CRM, NomeM, TelefoneM, Percentual) VALUES 
('CRM123', 'Dr. House', '123456789', 70),
('CRM456', 'Dra. Yang', '987654321', 75),
('CRM789', 'Dr. Mario', '555555555', 80),
('CRM111', 'Dr. McCoy', '111111111', 65),
('CRM222', 'Dr. Estranho', '222222222', 70),
('CRM333', 'Dr. Dolittle', '333333333', 75),
('CRM444', 'Dr. Fred Nicacio', '444444444', 80),
('CRM555', 'Dra. Grey', '66664444', 85),
('CRM666', 'Dr. Kildare', '66666666', 70),;

# Populando tabela de Especialidades
INSERT INTO ESPECIALIDADE (IdEsp, NomeE, Indice) VALUES 
(1, 'Cardiologista', 'C001'),
(2, 'Dermatologista', 'D002'),
(3, 'Pediatra', 'P003'),
(4, 'Neurologista', 'N004'),
(5, 'Ortopedista', 'O005'),
(6, 'Psiquiatra', 'P006'),
(7, 'Oftalmologista', 'O007'),
(8, 'Oncologista', 'O008');

# Populando tabela de Exerce Esp
INSERT INTO EXERCEESP (CRM, IdEsp) VALUES 
('CRM123', 1),
('CRM666', 2),
('CRM123', 2),
('CRM456', 2),
('CRM789', 3),
('CRM111', 4),
('CRM222', 5),
('CRM333', 6),
('CRM444', 7),
('CRM555', 8);

# Populando tabela de Pacientes
INSERT INTO PACIENTE (IdPac, CPF, NomeP, TelefonePac, Endereco, Idade, Sexo) VALUES 
(1, '123.456.789-00', 'Marta Vieira', '111111111', 'Rua A, 123', 35, 'Feminino'),
(2, '987.654.321-00', 'Ronaldinho Gaucho', '222222222', 'Rua B, 456', 45, 'Masculino'),
(3, '111.222.333-00', 'Bia Zanertato', '333333333', 'Rua C, 789', 25, 'Feminino'),
(4, '444.555.666-00', 'Cristiano Ronaldo', '444444444', 'Rua D, 321', 30, 'Masculino'),
(5, '777.888.999-00', 'Alisha Lehmann', '777777777', 'Rua E, 654', 50, 'Feminino'),
(6, '222.333.444-00', 'Diego Pituca', '666666666', 'Rua F, 987', 40, 'Masculino'),
(7, '555.666.777-00', 'Megan Rapinoe', '888888888', 'Rua G, 123', 60, 'Feminino'),
(8, '999.000.111-00', 'Endrick Felipe', '999999999', 'Rua H, 456', 20, 'Masculino');

# Populando tabela de Agenda
INSERT INTO AGENDA (IdAgenda, DiaSemana, HoraInicio, HoraFIm, CRM) VALUES 
(1, 'Segunda', '08:00:00', '12:00:00', 'CRM123'),
(2, 'Terça', '09:00:00', '13:00:00', 'CRM456'),
(3, 'Quarta', '10:00:00', '14:00:00', 'CRM789'),
(4, 'Quinta', '08:00:00', '12:00:00', 'CRM111'),
(5, 'Sexta', '09:00:00', '13:00:00', 'CRM222'),
(6, 'Sábado', '10:00:00', '14:00:00', 'CRM333'),
(7, 'Domingo', '11:00:00', '15:00:00', 'CRM444'),
(8, 'Segunda', '12:00:00', '16:00:00', 'CRM555'),
(4, 'CRM111', 4, 4, '2024-05-08', '08:00:00', '08:30:00', 'Sim', 90, 'Dinheiro'),
(5, 'CRM222', 5, 5, '2024-05-09', '09:00:00', '10:00:00', 'Sim', 110, 'Cartão'),
(6, 'CRM333', 6, 6, '2024-05-10', '10:00:00', '11:00:00', 'Sim', 130, 'Dinheiro'),
(7, 'CRM444', 7, 7, '2024-05-11', '11:00:00', '12:00:00', 'Sim', 150, 'Cartão'),
(8, 'CRM555', 8, 8, '2024-05-12', '12:00:00', '13:00:00', 'Sim', 170, 'Dinheiro');

# Populando tabela de Consultas
INSERT INTO CONSULTA (IdCon, CRM, IdEsp, IdPac, Data, HoraInicCon, HoraFimCon, Pagou, ValorPago, FormaPagamento) VALUES 
(1, 'CRM123', 1, 1, '2024-05-05', '08:00:00', '08:30:00', 'Sim', 100, 'Dinheiro'),
(2, 'CRM456', 2, 2, '2024-05-06', '09:00:00', '10:00:00', 'Sim', 120, 'Cartão'),
(3, 'CRM789', 3, 3, '2024-05-07', '10:00:00', '11:00:00', 'Sim', 150, 'Dinheiro'),
(4, 'CRM111', 4, 4, '2024-05-08', '08:00:00', '08:30:00', 'Sim', 90, 'Dinheiro'),
(5, 'CRM222', 5, 5, '2024-05-09', '09:00:00', '10:00:00', 'Sim', 110, 'Cartão'),
(6, 'CRM333', 6, 6, '2024-05-10', '10:00:00', '11:00:00', 'Sim', 130, 'Dinheiro'),
(7, 'CRM444', 7, 7, '2024-05-11', '11:00:00', '12:00:00', 'Sim', 150, 'Cartão'),
(8, 'CRM555', 8, 8, '2024-05-12', '12:00:00', '13:00:00', 'Sim', 170, 'Dinheiro'),
(9, 'CRM123', 2, 6, '2024-05-10', '10:00:00', '11:00:00', 'Sim', 200, 'Cartão');

# Populando tabela de Doenças
INSERT INTO DOENCA (IdDoenca, NomeD) VALUES 
(1, 'Hipertensão'),
(2, 'Dermatite'),
(3, 'Gripe'),
(4, 'Asma'),
(5, 'Fratura'),
(6, 'Depressão'),
(7, 'Catarata'),
(8, 'Cancer');

# Populando tabela de Diagnósticos
INSERT INTO DIAGNOSTICO (IdDiagnostico, IdCon, TratamentoRecomendado, RemediosReceitados, Observacoes) VALUES 
(1, 1, 'Repouso e dieta balanceada', 'Anlodipino', 'Retornar apos 15 dias para avaliação'),
(2, 2, 'Aplicar loção hidratante', 'Cetaphil', 'Agendar retorno para acompanhamento'),
(3, 3, 'Repouso e ingestão de liquidos', 'Paracetamol', 'Em caso de piora, retornar imediatamente'),
(4, 4, 'Inalação e corticoides', 'Salamol', 'Retornar após 7 dias para reavaliação'),
(5, 5, 'Gesso e repouso', 'Ibuprofeno', 'Agendar consulta de acompanhamento'),
(6, 6, 'Terapia e antidepressivos', 'Fluoxetina', 'Retornar em 15 dias para avaliação do tratamento'),
(7, 7, 'Cirurgia de catarata', 'N/A', 'Marcar cirurgia o mais breve possível'),
(8, 8, 'Quimioterapia', 'Adrenal', 'Agendar próxima quimioterapia');

# Populando tabela Diagnostica
INSERT INTO DIAGNOSTICA (IdDiagnostico, IdDoenca) VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);