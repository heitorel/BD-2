# Queries da atividade de banco de dados da clinica CLimed para ACH2025 em MySQL
#
# Heitor Lopes Bianchi - 10258730
# Marina Gonçalves do Nascimento - 10367291 

# Remover todos as consultas não pagas. 

DELETE FROM CONSULTA
WHERE Pagou = 'Não';