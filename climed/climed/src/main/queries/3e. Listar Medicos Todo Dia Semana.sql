# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Listar o nome dos médicos que atendem consultas todos os dias da semana.
USE CLIMED;
SELECT DISTINCT M.NomeM
FROM MEDICO M
WHERE M.CRM IN (
    SELECT A1.CRM
    FROM AGENDA A1
    GROUP BY A1.CRM
    HAVING COUNT(DISTINCT A1.DiaSemana) = (
        SELECT COUNT(DISTINCT DiaSemana)
        FROM AGENDA
    )
);