CREATE OR REPLACE TABLE YUKENDHIRAN.ORDER_BASE.T_INVOICE (
  ORDER_ID VARCHAR(100), 
  ORDER_DATE DATE, 
  CUSTOMER_ID VARCHAR(100), 
  INVOICE_DATE DATE, 
  TAX_AMOUNT NUMBER(12, 2), 
  TOTAL_AMOUNT NUMBER(12, 2), 
  DISCOUNT NUMBER(10, 2), 
  FINAL_INVOICE_AMT NUMBER(12, 2), 
  CREATE_DATE DATE, 
  CREATE_USER VARCHAR(100)
);
