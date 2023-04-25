-- SQLite

-- consulta os clientes que realizaram duas ou mais locações


SELECT C.NAME AS 'Nome',
       C.LASTNAME AS 'Sobrenome',
       C.PHONE AS 'Telefone',
       C.EMAIL AS 'E-mail',
       COUNT(CUSTOMER_ID) AS 'N. de locações'
       FROM CUSTOMERS AS C
       INNER JOIN LOCATIONS AS L ON (L.CUSTOMER_ID = C.ID)
       GROUP BY CUSTOMER_ID
       HAVING COUNT(CUSTOMER_ID) >=2;