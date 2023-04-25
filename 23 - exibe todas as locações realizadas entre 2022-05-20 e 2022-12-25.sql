-- SQLite

-- exibe todas as locações realizadas entre 2022-05-20 e 2022-12-25

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
    INNER JOIN CARS AS D ON (L.CAR_ID = D.ID)
    WHERE L.START_DATE BETWEEN '2022-05-20' AND '2022-12-25';