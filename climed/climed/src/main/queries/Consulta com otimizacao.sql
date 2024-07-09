# Consulta com otimização. Traz as consultas do médico com mais consultas agendadas

USE CLIMED;

CREATE INDEX idx_CRM_Consulta ON CONSULTA (CRM);
CREATE INDEX idx_IdPac_Consulta ON CONSULTA (IdPac);
CREATE INDEX idx_Data_Consulta ON CONSULTA (Data);
CREATE INDEX idx_CRM_Medico ON MEDICO (CRM);
CREATE INDEX idx_IdPac_Paciente ON PACIENTE (IdPac);

SELECT c.IdCon, c.CRM AS CRM_Medico, c.IdEsp, c.IdPac, c.Data, c.HoraInicCon, c.HoraFimCon,
       c.Pagou, c.ValorPago, c.FormaPagamento,
       p.NomeP AS Nome_Paciente,
       m.NomeM AS Nome_Medico
FROM CONSULTA c
INNER JOIN (
    SELECT CRM, COUNT(*) AS total_consultas
    FROM CONSULTA
    GROUP BY CRM
    ORDER BY total_consultas DESC
    LIMIT 1
) AS max_consultas ON c.CRM = max_consultas.CRM
INNER JOIN MEDICO m ON c.CRM = m.CRM
INNER JOIN PACIENTE p ON c.IdPac = p.IdPac
ORDER BY c.Data;