# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Qual é a quantidade total de consultas feitas pelo “Dr. House” por especialidade?

SELECT E.NomeE AS Especialidade, COUNT(*) AS TotalConsultas
FROM CONSULTA C
INNER JOIN MEDICO M ON C.CRM = M.CRM
INNER JOIN EXERCEESP EE ON M.CRM = EE.CRM
INNER JOIN ESPECIALIDADE E ON EE.IdEsp = E.IdEsp
WHERE M.NomeM = 'Dr. House'
GROUP BY E.NomeE;