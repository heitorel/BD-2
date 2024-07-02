# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Listar as consultas (IdMedico, IdPaciente, IdEspecial, Data, HoraInicCon) marcadas pelo paciente “Diego Pituca” com o “Dr. House”.
USE CLIMED;
SELECT M.CRM AS IdMedico, C.IdPac AS IdPaciente, C.IdEsp AS IdEspecial, C.Data, C.HoraInicCon
FROM CONSULTA C
INNER JOIN MEDICO M ON C.CRM = M.CRM
INNER JOIN PACIENTE P ON C.IdPac = P.IdPac
WHERE P.NomeP = 'Diego Pituca' AND M.NomeM = 'Dr. House';