-- SQLite

-- Consulta de automóveis do ano de 2016

SELECT  C.NAME AS 'Nome',
        C.YEAR AS 'Ano',
        C.COLOR AS 'Cor',
        C.KM AS 'Kilometragem',
        C.STATUS AS 'Status',
        B.BRAND_NAME AS 'Marca',
        M.MODEL_NAME AS 'Modelo'
    FROM CARS AS C 
    INNER JOIN CAR_BRANDS AS B ON (C.BRAND_ID = B.ID)
    INNER JOIN CAR_MODELS AS M ON (C.MODEL_ID = M.ID)
    WHERE C.YEAR = 2016;