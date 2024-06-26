CREATE 
OR REPLACE VIEW ORDER_XFRM.V_SALES_ORDER_HEADER AS 
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  STATUS, 
  CUSTOMER_ID, 
  ITEM_COUNT, 
  TOTAL_AMOUNT, 
  DISCOUNT, 
  COUPON,
  CREATE_DATE, 
  CREATE_USER 
FROM 
  ORDER_BASE.T_SALES_ORDER_HEADER;
SELECT 
  * 
FROM 
  ORDER_XFRM.V_SALES_ORDER_HEADER;