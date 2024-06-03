# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Listar os médicos (CRM, NomeM) que atendem todas as especialidades.

SELECT M.CRM, M.NomeM
FROM MEDICO M
WHERE NOT EXISTS (
    SELECT E.IdEsp
    FROM ESPECIALIDADE E
    WHERE NOT EXISTS (
        SELECT EE.IdEsp
        FROM EXERCEESP EE
        WHERE EE.CRM = M.CRM AND EE.IdEsp = E.IdEsp
    )
);
