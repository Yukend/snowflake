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
INSERT INTO ORDER_BASE.T_SALES_ORDER_DETAIL (
  ORDER_ID, ORDER_DATE, CUSTOMER_ID, 
  ITEM_ID, QTY, PRICE, CREATE_DATE, 
  CREATE_USER
) 
VALUES 
  (
    'ORD001', '2024-05-25', 'CUST001', 
    'ITEM001', 5, 100.00, '2024-05-25', 
    'John Doe'
  ), 
  (
    'ORD002', '2024-05-26', 'CUST002', 
    'ITEM002', 10, 75.50, '2024-05-26', 
    'Jane Smith'
  ), 
  (
    'ORD003', '2024-05-27', 'CUST003', 
    'ITEM003', 15, 87.25, '2024-05-27', 
    'Michael Lee'
  ), 
  (
    'ORD004', '2024-05-28', 'CUST004', 
    'ITEM004', 20, 55.00, '2024-05-28', 
    'Alice Johnson'
  ), 
  (
    'ORD005', '2024-05-29', 'CUST005', 
    'ITEM005', 25, 65.75, '2024-05-29', 
    'David Williams'
  ),
  (
    'ORD006', '2024-05-30', 'CUST006', 
    'ITEM006', 30, 75.75, '2024-05-30', 
    'David Willy'
  ),
  (
    'ORD001', '2024-05-25', 'CUST001', 
    'ITEM002', 5, 75.50, '2024-05-25', 
    'John Doe'
  ), 
  (
    'ORD002', '2024-05-26', 'CUST002', 
    'ITEM003', 10, 87.25, '2024-05-26', 
    'Jane Smith'
  ), 
  (
    'ORD003', '2024-05-27', 'CUST003', 
    'ITEM004', 15, 55.00, '2024-05-27', 
    'Michael Lee'
  ), 
  (
    'ORD004', '2024-05-28', 'CUST004', 
    'ITEM005', 20, 65.75, '2024-05-28', 
    'Alice Johnson'
  ), 
  (
    'ORD005', '2024-05-29', 'CUST005', 
    'ITEM006', 25, 75.75, '2024-05-29', 
    'David Williams'
  ),
  (
    'ORD006', '2024-05-30', 'CUST006', 
    'ITEM001', 30, 100.00, '2024-05-30', 
    'David Willy'
  ),
  (
    'ORD001', '2024-05-25', 'CUST001', 
    'ITEM003', 5, 87.25, '2024-05-25', 
    'John Doe'
  ), 
  (
    'ORD002', '2024-05-26', 'CUST002', 
    'ITEM004', 10, 55.00, '2024-05-26', 
    'Jane Smith'
  ), 
  (
    'ORD003', '2024-05-27', 'CUST003', 
    'ITEM005', 15, 65.75, '2024-05-27', 
    'Michael Lee'
  ), 
  (
    'ORD004', '2024-05-28', 'CUST004', 
    'ITEM006', 20, 75.75, '2024-05-28', 
    'Alice Johnson'
  ), 
  (
    'ORD005', '2024-05-29', 'CUST005', 
    'ITEM001', 25, 100.00, '2024-05-29', 
    'David Williams'
  ),
  (
    'ORD006', '2024-05-30', 'CUST006', 
    'ITEM002', 30, 75.50, '2024-05-30', 
    'David Willy'
  ),
  (
    'ORD007', '2024-05-25', 'CUST001', 
    'ITEM004', 5, 55.00, '2024-05-25', 
    'John Doe'
  ), 
  (
    'ORD008', '2024-05-26', 'CUST002', 
    'ITEM005', 10, 65.75, '2024-05-26', 
    'Jane Smith'
  ), 
  (
    'ORD009', '2024-05-27', 'CUST003', 
    'ITEM006', 15, 75.75, '2024-05-27', 
    'Michael Lee'
  ), 
  (
    'ORD0010', '2024-05-28', 'CUST004', 
    'ITEM001', 20, 100.00, '2024-05-28', 
    'Alice Johnson'
  ), 
  (
    'ORD0011', '2024-05-29', 'CUST005', 
    'ITEM002', 25, 75.50, '2024-05-29', 
    'David Williams'
  ),
  (
    'ORD0012', '2024-05-30', 'CUST006', 
    'ITEM003', 30, 87.25, '2024-05-30', 
    'David Willy'
  ),
  (
    'ORD007', '2024-05-25', 'CUST001', 
    'ITEM005', 5, 65.75, '2024-05-25', 
    'John Doe'
  ), 
  (
    'ORD008', '2024-05-26', 'CUST002', 
    'ITEM006', 10, 75.75, '2024-05-26', 
    'Jane Smith'
  ), 
  (
    'ORD009', '2024-05-27', 'CUST003', 
    'ITEM001', 15, 100.00, '2024-05-27', 
    'Michael Lee'
  ), 
  (
    'ORD0010', '2024-05-28', 'CUST004', 
    'ITEM002', 20, 75.50, '2024-05-28', 
    'Alice Johnson'
  ), 
  (
    'ORD0011', '2024-05-29', 'CUST005', 
    'ITEM003', 25, 87.25, '2024-05-29', 
    'David Williams'
  ),
  (
    'ORD0012', '2024-05-30', 'CUST006', 
    'ITEM004', 30, 55.00, '2024-05-30', 
    'David Willy'
  );
SELECT 
  * 
FROM 
  ORDER_BASE.T_SALES_ORDER_DETAIL;