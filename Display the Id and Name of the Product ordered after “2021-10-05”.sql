SELECT product.PRO_ID, product.PRO_NAME
FROM `lab01`.`order`
JOIN `lab01`.supplier_pricing ON `order`.PRICING_ID = supplier_pricing.PRICING_ID
JOIN `lab01`.product ON supplier_pricing.PRO_ID = product.PRO_ID
WHERE `order`.ORD_DATE > '2021-10-05';
