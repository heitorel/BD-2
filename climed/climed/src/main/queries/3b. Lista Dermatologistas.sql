# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

#Listar os médicos (CRM, NomeM) que atendem somente na especialidade “Dermatologia”.

SELECT DISTINCT M.CRM, M.NomeM
FROM MEDICO M
INNER JOIN EXERCEESP EE ON M.CRM = EE.CRM
INNER JOIN ESPECIALIDADE E ON EE.IdEsp = E.IdEsp
WHERE E.NomeE = 'Dermatologia'
AND M.CRM NOT IN (
    SELECT M2.CRM
    FROM MEDICO M2
    INNER JOIN EXERCEESP EE2 ON M2.CRM = EE2.CRM
    INNER JOIN ESPECIALIDADE E2 ON EE2.IdEsp = E2.IdEsp
    WHERE E2.NomeE != 'Dermatologia'
);
