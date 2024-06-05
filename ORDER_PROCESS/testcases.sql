-- Test case 1: Verify that customers with 'ACTIVE' status are returned
SELECT 
  CUSTOMER_ID 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER 
WHERE 
  STATUS = 'ACTIVE';
-- Test case 2: Verify that customers with 'INACTIVE' status are returned
SELECT 
  CUSTOMER_ID 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER 
WHERE 
  STATUS = 'INACTIVE';
-- Test case 3: Verify that customers with 'ACTIVE' status and specific customer ID are returned
SELECT 
  CUSTOMER_ID, 
  STATUS 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER 
WHERE 
  STATUS = 'ACTIVE' 
  AND CUSTOMER_ID = 'CUST0001';
-- Test case 4: Verify that sales orders with 'OPEN' status are returned
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  STATUS 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER 
WHERE 
  STATUS = 'OPEN';
-- Test case 5: Verify that sales orders with 'CLOSED' status are returned
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  STATUS 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER 
WHERE 
  STATUS = 'CLOSED';
-- Test case 6: Verify that sales orders with order date greater than current date are returned
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  STATUS 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER 
WHERE 
  ORDER_DATE > CURRENT_DATE;
-- Test case 7: Verify that sales orders with order date less than current date are returned
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  STATUS 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER 
WHERE 
  ORDER_DATE < CURRENT_DATE;
-- Test case 8: Verify that sales orders with 'OPEN' status and specific order ID are returned
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  STATUS 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER 
WHERE 
  STATUS = 'OPEN' 
  AND ORDER_ID = 'ORD0009';
-- Test case 9: Verify that invoice details for a specific order ID are returned
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  INVOICE_DATE, 
  TAX_AMOUNT, 
  TOTAL_AMOUNT, 
  DISCOUNT, 
  FINAL_INVOICE_AMT 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE 
WHERE 
  ORDER_ID = 'ORD0009';
-- Test case 10: Verify that customer, sales order, and invoice details are returned for active customers with open sales orders
SELECT 
  cu.CUSTOMER_ID, 
  soh.ORDER_ID, 
  soh.DISCOUNT, 
  cu.CATEGORY, 
  cu.LOYALTY_POINTS, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  soh.TOTAL_AMOUNT 
FROM 
  ORDER_XFRM.V_CUSTOMER cu 
  JOIN ORDER_XFRM.V_SALES_ORDER_HEADER soh ON cu.CUSTOMER_ID = soh.CUSTOMER_ID 
  JOIN ORDER_XFRM.V_INVOICE inv ON soh.ORDER_ID = inv.ORDER_ID 
WHERE 
  cu.STATUS = 'ACTIVE' 
  AND soh.STATUS = 'OPEN';
-- Test case 11: Verify that customer, sales order, and invoice details are returned for inactive customers with open sales orders
SELECT 
  cu.CUSTOMER_ID, 
  soh.ORDER_ID, 
  soh.DISCOUNT, 
  cu.CATEGORY, 
  cu.LOYALTY_POINTS, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  soh.TOTAL_AMOUNT 
FROM 
  ORDER_XFRM.V_CUSTOMER cu 
  JOIN ORDER_XFRM.V_SALES_ORDER_HEADER soh ON cu.CUSTOMER_ID = soh.CUSTOMER_ID 
  JOIN ORDER_XFRM.V_INVOICE inv ON soh.ORDER_ID = inv.ORDER_ID 
WHERE 
  cu.STATUS = 'INACTIVE' 
  AND soh.STATUS = 'OPEN';
-- Test case 12: Verify that customer, sales order, and invoice details are returned for active customers with closed sales orders
SELECT 
  cu.CUSTOMER_ID, 
  soh.ORDER_ID, 
  soh.DISCOUNT, 
  cu.CATEGORY, 
  cu.LOYALTY_POINTS, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  soh.TOTAL_AMOUNT 
FROM 
  ORDER_XFRM.V_CUSTOMER cu 
  JOIN ORDER_XFRM.V_SALES_ORDER_HEADER soh ON cu.CUSTOMER_ID = soh.CUSTOMER_ID 
  JOIN ORDER_XFRM.V_INVOICE inv ON soh.ORDER_ID = inv.ORDER_ID 
WHERE 
  cu.STATUS = 'ACTIVE' 
  AND soh.STATUS = 'CLOSED';
-- Test case 13: Verify that customer, sales order, and invoice details are returned for inactive customers with closed sales orders
SELECT 
  cu.CUSTOMER_ID, 
  soh.ORDER_ID, 
  soh.DISCOUNT, 
  cu.CATEGORY, 
  cu.LOYALTY_POINTS, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  soh.TOTAL_AMOUNT 
FROM 
  ORDER_XFRM.V_CUSTOMER cu 
  JOIN ORDER_XFRM.V_SALES_ORDER_HEADER soh ON cu.CUSTOMER_ID = soh.CUSTOMER_ID 
  JOIN ORDER_XFRM.V_INVOICE inv ON soh.ORDER_ID = inv.ORDER_ID 
WHERE 
  cu.STATUS = 'INACTIVE' 
  AND soh.STATUS = 'CLOSED';
-- Test case 14: Verify that sales order details for a specific customer ID are returned
SELECT 
  ORDER_ID, 
  CUSTOMER_ID, 
  ITEM_COUNT, 
  TOTAL_AMOUNT, 
  DISCOUNT 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER 
WHERE 
  CUSTOMER_ID = 'CUST0001';
-- Test case 15: Verify that sales order details for a specific customer ID are returned
SELECT 
  ITEM_ID, 
  ORDER_ID, 
  CUSTOMER_ID, 
  QTY, 
  PRICE, 
  TOTAL_AMOUNT 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_DETAIL 
WHERE 
  CUSTOMER_ID = 'CUST0001';
-- Test case 16: Verify that customer details for a specific customer ID are returned
SELECT 
  CUSTOMER_ID, 
  CATEGORY, 
  TOTAL_INVOICE_AMOUNT, 
  LOYALTY_POINTS 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER 
WHERE 
  CUSTOMER_ID = 'CUST0001';
-- Test case 17: Verify that customer, sales order, and invoice details are returned for a specific customer ID
SELECT 
  cu.CUSTOMER_ID, 
  CATEGORY, 
  soh.STATUS, 
  FINAL_INVOICE_AMT, 
  soh.DISCOUNT, 
  TAX_AMOUNT, 
  inv.TOTAL_AMOUNT 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER soh ON cu.CUSTOMER_ID = soh.CUSTOMER_ID 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv ON soh.ORDER_ID = inv.ORDER_ID 
WHERE 
  cu.CUSTOMER_ID = 'CUST0001';
-- Test case 18: Verify that invoice details with final invoice amount greater than 1000 are returned
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  INVOICE_DATE, 
  TAX_AMOUNT, 
  TOTAL_AMOUNT, 
  DISCOUNT, 
  FINAL_INVOICE_AMT 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE 
WHERE 
  FINAL_INVOICE_AMT > 1000;
-- Test case 19: Verify that invoice details with final invoice amount less than 1000 are returned
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  INVOICE_DATE, 
  TAX_AMOUNT, 
  TOTAL_AMOUNT, 
  DISCOUNT, 
  FINAL_INVOICE_AMT 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE 
WHERE 
  FINAL_INVOICE_AMT < 1000;
-- Test case 20: Verify that loyalty points updated for the customer not in regular and they spend more than 1000 on final invoice amount
SELECT 
  cu.CUSTOMER_ID, 
  LOYALTY_POINTS, 
  FINAL_INVOICE_AMT, 
  CATEGORY 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv ON cu.CUSTOMER_ID = inv.CUSTOMER_ID 
WHERE 
  CATEGORY NOT IN ('REGULAR') 
  AND FINAL_INVOICE_AMT > 1000;
-- Test case 20: Verify that loyalty points for the customer in regular and they spend more than 1000 on final invoice amount
SELECT 
  cu.CUSTOMER_ID, 
  LOYALTY_POINTS, 
  FINAL_INVOICE_AMT, 
  CATEGORY 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv ON cu.CUSTOMER_ID = inv.CUSTOMER_ID 
WHERE 
  CATEGORY IN ('REGULAR') 
  AND FINAL_INVOICE_AMT > 1000;
-- Test case 21: Verify that invoice details for a based on GOLD category are returned
SELECT 
  inv.ORDER_ID, 
  inv.DISCOUNT, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  cu.CATEGORY, 
  cu.loyalty_points, 
  cu.CUSTOMER_ID 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu ON inv.CUSTOMER_ID = cu.CUSTOMER_ID 
WHERE 
  cu.CATEGORY = 'GOLD';
-- Test case 22: Verify that invoice details for a based on SILVER category are returned
SELECT 
  inv.ORDER_ID, 
  inv.DISCOUNT, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  cu.CATEGORY, 
  cu.loyalty_points, 
  cu.CUSTOMER_ID 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu ON inv.CUSTOMER_ID = cu.CUSTOMER_ID 
WHERE 
  cu.CATEGORY = 'SILVER';
-- Test case 23: Verify that invoice details for a based on BRONZE category are returned
SELECT 
  inv.ORDER_ID, 
  inv.DISCOUNT, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  cu.CATEGORY, 
  cu.loyalty_points, 
  cu.CUSTOMER_ID 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu ON inv.CUSTOMER_ID = cu.CUSTOMER_ID 
WHERE 
  cu.CATEGORY = 'BRONZE';
-- Test case 24: Verify that invoice details for a based on REGULAR category are returned
SELECT 
  inv.ORDER_ID, 
  inv.DISCOUNT, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  cu.CATEGORY, 
  cu.loyalty_points, 
  cu.CUSTOMER_ID 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu ON inv.CUSTOMER_ID = cu.CUSTOMER_ID 
WHERE 
  cu.CATEGORY = 'REGULAR';
-- Test case 25: Verify that invoice details for a regular customer with coupons x returned
SELECT 
  inv.ORDER_ID, 
  inv.DISCOUNT, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  cu.CATEGORY, 
  cu.CUSTOMER_ID, 
  soh.COUPON 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu ON inv.CUSTOMER_ID = cu.CUSTOMER_ID 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER soh ON soh.ORDER_ID = inv.ORDER_ID 
WHERE 
  cu.CATEGORY = 'REGULAR' 
  AND soh.COUPON = 'COUPON_X';
-- Test case 26: Verify that invoice details for a regular customer with coupons y returned
SELECT 
  inv.ORDER_ID, 
  inv.DISCOUNT, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  cu.CATEGORY, 
  cu.CUSTOMER_ID, 
  soh.COUPON 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu ON inv.CUSTOMER_ID = cu.CUSTOMER_ID 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER soh ON soh.ORDER_ID = inv.ORDER_ID 
WHERE 
  cu.CATEGORY = 'REGULAR' 
  AND soh.COUPON = 'COUPON_Y';
-- Test case 27: Verify that invoice details for a regular customer with coupons z returned
SELECT 
  inv.ORDER_ID, 
  inv.DISCOUNT, 
  inv.FINAL_INVOICE_AMT, 
  inv.TAX_AMOUNT, 
  cu.CATEGORY, 
  cu.CUSTOMER_ID, 
  soh.COUPON 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_INVOICE inv 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER cu ON inv.CUSTOMER_ID = cu.CUSTOMER_ID 
  JOIN YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER soh ON soh.ORDER_ID = inv.ORDER_ID 
WHERE 
  cu.CATEGORY = 'REGULAR' 
  AND soh.COUPON = 'COUPON_Z';
