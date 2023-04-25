-- SQLite

-- exibe a locação com o maior valor total

SELECT L.START_DATE AS 'Início',
       L.END_DATE AS 'Final',
       MAX(L.TOTAL) AS 'Valor',
       C.NAME AS 'Nome do cliente',
       C.LASTNAME AS 'Sobrenome do cliente',
       D.NAME AS 'Veículo',
       E.NAME AS 'Funcionário'

    FROM LOCATIONS AS L
    INNER JOIN CUSTOMERS AS C ON (L.CUSTOMER_ID = C.ID)
    INNER JOIN EMPLOYEES AS E ON (L.EMPLOYEE_ID = E.ID)
    INNER JOIN CARS AS D ON (L.CAR_ID = D.ID);