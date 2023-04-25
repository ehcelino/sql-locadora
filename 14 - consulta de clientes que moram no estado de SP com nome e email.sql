-- SQLite

-- Consulta de clientes que moram no estado de SP, com nome e email

SELECT NAME AS 'Nome',
       LASTNAME AS 'Sobrenome',
       EMAIL AS 'E-mail'
       FROM CUSTOMERS
       WHERE STATE = 'SP';