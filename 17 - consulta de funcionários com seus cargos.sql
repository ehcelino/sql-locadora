-- SQLite

-- consulta de funcionários com seus cargos

SELECT E.NAME AS 'Nome',
       P.DESCRIPTION AS 'Cargo',
       E.PHONE_NUMBER AS 'Telefone',
       E.CONTRACT_DATE AS 'Data de admissão'
    FROM EMPLOYEES AS E
    INNER JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID);