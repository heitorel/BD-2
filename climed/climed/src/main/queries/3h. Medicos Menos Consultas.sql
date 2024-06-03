# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Quais são os médicos (CRM, NomeM) com o menor número de consultas atendidas? 

SELECT M.CRM, M.NomeM
FROM MEDICO M
LEFT JOIN CONSULTA C ON M.CRM = C.CRM
GROUP BY M.CRM, M.NomeM
ORDER BY COUNT(C.IdCon) ASC
LIMIT 2;