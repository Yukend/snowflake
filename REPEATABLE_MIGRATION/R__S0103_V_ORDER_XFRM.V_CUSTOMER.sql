CREATE 
OR REPLACE VIEW YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER AS 
SELECT 
  CUSTOMER_ID, 
  ADDRESS, 
  PHONE_NO, 
  CATEGORY, 
  STATUS, 
  TOTAL_ORDERS, 
  TOTAL_INVOICE_AMOUNT, 
  LOYALTY_POINTS, 
  CREATE_DATE, 
  CREATE_USER 
FROM 
  YUKENDHIRAN.ORDER_BASE.T_CUSTOMER;
  