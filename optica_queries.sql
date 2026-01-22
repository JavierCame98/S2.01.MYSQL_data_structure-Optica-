USE optica;


SELECT 
    sa.sale_date, 
    c.name AS Customer, 
    e.name AS Employee, 
    b.name AS Brand_Sold, 
    g.price
FROM sale sa
JOIN customer c ON sa.customer_id = c.customer_id
JOIN employee e ON sa.employee_id = e.employee_id
JOIN glasses g ON sa.glasses_id = g.glasses_id
JOIN brand b ON g.brand_id = b.brand_id;


SELECT COUNT(sale_id) AS total_facturas
FROM sale
WHERE customer_id = 1 -- Sustituir por el ID del cliente
  AND sale_date BETWEEN '2024-01-01' AND '2024-12-31';

SELECT DISTINCT b.name AS modelo_marca
FROM sale s
         JOIN glasses g ON s.glasses_id = g.glasses_id
         JOIN brand b ON g.brand_id = b.brand_id
WHERE s.employee_id = 1 -- Sustituir por el ID del empleado
  AND YEAR(s.sale_date) = 2024;

SELECT DISTINCT p.name AS proveedor
FROM supplier p
         JOIN brand b ON p.supplier_id = b.supplier_id
         JOIN glasses g ON b.brand_id = g.brand_id
         JOIN sale s ON g.glasses_id = s.glasses_id;

