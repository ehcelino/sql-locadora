-- SQLite

-- consulta todas as locações realizadas, com nome do cliente, automóvel e funcionário vinculados

SELECT L.START_DATE AS 'Início',
       L.END_DATE AS 'Final',
       L.TOTAL AS 'Total',
       C.NAME AS 'Nome do cliente',
       C.LASTNAME AS 'Sobrenome do cliente',
       D.NAME AS 'Veículo',
       E.NAME AS 'Funcionário'
    FROM LOCATIONS AS L
    INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
    INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)
    INNER JOIN CARS AS D ON (L.CAR_ID = D.ID);