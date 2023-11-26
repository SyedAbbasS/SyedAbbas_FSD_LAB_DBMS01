SELECT `order`.ORD_ID, product.PRO_NAME, `order`.ORD_AMOUNT, `order`.ORD_DATE
FROM `lab01`.order
JOIN `lab01`.supplier_pricing ON `order`.PRICING_ID = supplier_pricing.PRICING_ID
JOIN `lab01`.product ON supplier_pricing.PRO_ID = product.PRO_ID
WHERE `order`.CUS_ID = 2;