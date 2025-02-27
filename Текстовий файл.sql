-- 1.1.--
SELECT * FROM mydb.products;
-- 1.2--
SELECT name, phone FROM mydb.shippers;
-- 2.--
SELECT 
    AVG(price) AS Середнє_значення, 
    MAX(price) AS Максимальне_значення, 
    MIN(price) AS Мінімальне_значення
FROM mydb.products;
-- 3.--
SELECT DISTINCT category_id, price FROM mydb.products
ORDER BY price DESC
LIMIT 10;
-- 4.--
SELECT COUNT(*) AS Кількість_продуктів FROM mydb.products
WHERE price BETWEEN 20 AND 100;
-- 5. --
SELECT 
    supplier_id, 
    COUNT(*) AS Кількість_продуктів, 
    AVG(price) AS Середня_ціна
FROM mydb.products
GROUP BY supplier_id;
