SELECT 
    CAT_ID, 
    CAT_NAME, 
    PRO_NAME, 
    SUPP_PRICE AS LeastExpensivePrice
FROM (
    SELECT 
        C.CAT_ID, 
        C.CAT_NAME, 
        P.PRO_NAME, 
        SP.SUPP_PRICE,
        RANK() OVER (PARTITION BY C.CAT_ID ORDER BY SP.SUPP_PRICE) AS PriceRank
    FROM 
        `lab01`.category C
    JOIN
        `lab01`.product P ON C.CAT_ID = P.CAT_ID
    JOIN
        `lab01`.supplier_pricing SP ON P.PRO_ID = SP.PRO_ID
) ranked_products
WHERE PriceRank = 1;

