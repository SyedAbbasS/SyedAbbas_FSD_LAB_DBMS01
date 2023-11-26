SELECT CUS_GENDER, COUNT(DISTINCT customer.CUS_ID) AS TotalCustomers
FROM `lab01`.customer
JOIN `lab01`.`order` ON customer.CUS_ID = `order`.CUS_ID
WHERE ORD_AMOUNT >= 3000
GROUP BY CUS_GENDER