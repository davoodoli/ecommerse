-- Create a view to show the all the receipts of the customers
CREATE OR REPLACE VIEW vw_cpp_contribution AS
SELECT
  c.first_name AS "First Name",
  c.last_name AS "Last Name",
  c.email AS "Email",
  s.sales_date AS "Date",
  p.name AS "Product",
  s_d.qty AS "Quantity",
  s_d.unit_price AS "Unit Price",
  s_d.line_total AS "Line Total"
FROM
  sales s
INNER JOIN
  sale_details s_d ON s.sales_id = s_d.sales_id
INNER JOIN
  customer c ON c.customer_id = s.customer_id
JOIN
   product p ON p.product_id = s_d.product_id
ORDER BY
  s.customer_id;
  

  
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  