CREATE 
OR REPLACE VIEW ORDER_ANALYSIS.V_CUSTOMER_CORE AS 
SELECT 
  CUSTOMER_ID, 
  ADDRESS, 
  PHONE_NO, 
  CATEGORY, 
  STATUS, 
  TOTAL_ORDERS, 
  TOTAL_INVOICE_AMOUNT, 
  CREATE_DATE, 
  CREATE_USER 
FROM 
  ORDER_XFRM.V_CUSTOMER
WHERE
  STATUS = 'ACTIVE';
SELECT 
  * 
FROM 
  ORDER_ANALYSIS.V_CUSTOMER_CORE;