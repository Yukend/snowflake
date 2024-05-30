CREATE 
OR REPLACE TABLE ORDER_BASE.T_SALES_ORDER_DETAIL (
  ORDER_ID VARCHAR(100), 
  ORDER_DATE DATE, 
  CUSTOMER_ID VARCHAR(100), 
  ITEM_ID VARCHAR(100), 
  QTY INTEGER, 
  PRICE FLOAT, 
  TOTAL_AMOUNT NUMBER(12, 2) DEFAULT 0, 
  CREATE_DATE DATE, 
  CREATE_USER VARCHAR(100)
);