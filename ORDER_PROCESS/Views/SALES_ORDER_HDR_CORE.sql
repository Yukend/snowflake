CREATE 
OR REPLACE VIEW ORDER_ANALYSIS.V_SALES_ORDER_HDR_CORE AS 
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
  ORDER_XFRM.V_SALES_ORDER_HEADER
WHERE 
  ORDER_DATE > CURRENT_DATE;
SELECT 
  * 
FROM 
  ORDER_ANALYSIS.V_SALES_ORDER_HDR_CORE;