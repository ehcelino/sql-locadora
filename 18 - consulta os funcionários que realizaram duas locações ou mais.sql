-- SQLite

-- consulta os funcionários que realizaram duas locações ou mais


SELECT E.NAME AS 'Nome',
       P.DESCRIPTION AS 'Cargo',
       E.PHONE_NUMBER AS 'Telefone',
       E.CONTRACT_DATE AS 'Data de admissão',
       COUNT(EMPLOYEE_ID) AS 'Num. de locações'
       FROM EMPLOYEES AS E
       INNER JOIN POSITIONS AS P ON (E.POSITION_ID = P.ID)
       INNER JOIN LOCATIONS AS L ON (L.EMPLOYEE_ID = E.ID)
       GROUP BY EMPLOYEE_ID
       HAVING COUNT(EMPLOYEE_ID) >=2;