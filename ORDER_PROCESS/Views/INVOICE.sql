CREATE 
OR REPLACE VIEW ORDER_ANALYSIS.V_INVOICE AS 
SELECT 
  ORDER_ID, 
  ORDER_DATE, 
  CUSTOMER_ID, 
  INVOICE_DATE, 
  TAX_AMOUNT, 
  TOTAL_AMOUNT, 
  DISCOUNT, 
  FINAL_INVOICE_AMT, 
  CREATE_DATE, 
  CREATE_USER 
FROM 
  ORDER_BASE.T_INVOICE;
SELECT 
  * 
FROM 
  ORDER_ANALYSIS.V_INVOICE;