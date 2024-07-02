# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Transferir a consulta do paciente “Diego Pituca” no dia “10/05/2024” às 10
# a:m,na Especialidade “dermatologia”, com o “Dr. House”, para o dia
# “24/05/2024”, na mesma hora, como o “Dr. Kildare”, na mesma especialidade.
USE CLIMED;
UPDATE CONSULTA
SET CRM = (
    SELECT M.CRM
    FROM MEDICO M
    INNER JOIN EXERCEESP EE ON M.CRM = EE.CRM
    INNER JOIN ESPECIALIDADE E ON EE.IdEsp = E.IdEsp
    WHERE M.NomeM = 'Dr. Kildare' AND E.NomeE = 'Dermatologia'
),
Data = '2024-05-24',
WHERE IdPac = (
    SELECT IdPac
    FROM PACIENTE
    WHERE NomeP = 'Diego Pituca'
)
AND Data = '2024-05-10'
AND HoraInicCon = '10:00:00';
