# Consulta sem otimização. Traz as consultas do médico com mais consultas agendadas

USE CLIMED;

SELECT *
FROM CONSULTA c
JOIN MEDICO m ON c.CRM = m.CRM
JOIN PACIENTE p ON c.IdPac = p.IdPac
WHERE c.CRM = (
    SELECT CRM
    FROM (
        SELECT CRM, COUNT(*) AS total_consultas
        FROM CONSULTA
        GROUP BY CRM
        ORDER BY total_consultas DESC
        LIMIT 1
    ) AS max_consultas
)
ORDER BY c.Data;
