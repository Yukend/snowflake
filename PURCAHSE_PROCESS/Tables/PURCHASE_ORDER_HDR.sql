CREATE 
OR REPLACE TABLE PURCHASE_BASE.T_PURCHASE_ORDER_HDR (
  PURCHASE_ORDER_NBR VARCHAR(20) PRIMARY KEY, 
  SUPPLIER_ID VARCHAR(20) FOREIGN KEY REFERENCES PURCHASE_BASE.T_SUPPLIER_HDR(SUPPLIER_ID), 
  PLANT_LOCATION VARCHAR(20), 
  TOTAL_QTY FLOAT, 
  TOTAL_AMOUNT DECIMAL(10, 2), 
  REQUEST_DATE DATE, 
  ANTICIPATE_DATE DATE, 
  SUPPLIER_CONFIRM_DATE DATE, 
  CREATE_DATE DATE, 
  CREATE_USER VARCHAR(50)
);
INSERT INTO PURCHASE_BASE.T_PURCHASE_ORDER_HDR (
  PURCHASE_ORDER_NBR, SUPPLIER_ID, 
  PLANT_LOCATION, TOTAL_QTY, TOTAL_AMOUNT, 
  REQUEST_DATE, ANTICIPATE_DATE, SUPPLIER_CONFIRM_DATE, 
  CREATE_DATE, CREATE_USER
) 
VALUES 
  (
    'PO1234', 
    'SUP001', 
    'INDIA', 
    100, 
    5000.00, 
    TO_DATE('2024-05-25', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-25', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-25', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-25', 'YYYY-MM-DD'), 
    'John Doe'
  ), 
  (
    'PO5678', 
    'SUP002', 
    'INDIA', 
    75, 
    2250.75, 
    TO_DATE('2024-05-26', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-26', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-26', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-26', 'YYYY-MM-DD'), 
    'Jane Smith'
  ), 
  (
    'PO9012', 
    'SUP003', 
    'INDIA', 
    150, 
    7800.50, 
    TO_DATE('2024-05-27', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-27', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-27', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-27', 'YYYY-MM-DD'), 
    'Michael Lee'
  ), 
  (
    'PO3456', 
    'SUP004', 
    'INDIA', 
    40, 
    1800.00, 
    TO_DATE('2024-05-28', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-28', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-28', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-28', 'YYYY-MM-DD'), 
    'Alice Johnson'
  ), 
  (
    'PO7890', 
    'SUP005', 
    'INDIA', 
    60, 
    3900.00, 
    TO_DATE('2024-05-29', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-29', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-29', 'YYYY-MM-DD'), 
    TO_DATE('2024-05-29', 'YYYY-MM-DD'), 
    'David Williams'
  );
SELECT 
  * 
FROM 
  PURCHASE_BASE.T_PURCHASE_ORDER_HDR;