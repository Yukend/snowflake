CREATE 
OR REPLACE VIEW YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_DETAIL AS 
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  ITEM_ID, 
  QTY, 
  PRICE, 
  TOTAL_AMOUNT, 
  CREATE_DATE, 
  CREATE_USER 
FROM 
  YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_DETAIL;
  