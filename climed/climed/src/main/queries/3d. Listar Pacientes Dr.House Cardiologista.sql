# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Listar os pacientes (CPF, NomeP) consultados pelo “Dr. House” como “Cardiologista”.

SELECT P.CPF, P.NomeP
FROM PACIENTE P
INNER JOIN CONSULTA C ON P.IdPac = C.IdPac
INNER JOIN MEDICO M ON C.CRM = M.CRM
INNER JOIN EXERCEESP EE ON M.CRM = EE.CRM
INNER JOIN ESPECIALIDADE E ON EE.IdEsp = E.IdEsp
WHERE M.NomeM = 'Dr. House' AND E.NomeE = 'Cardiologia';
