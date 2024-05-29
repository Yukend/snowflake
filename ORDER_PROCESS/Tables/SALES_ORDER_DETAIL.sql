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
    'ORD001', '2024-05-31', 'CUST001', 
    'ITEM001', 5, 100.00, '2024-05-31', 
    'John Doe'
  ), 
  (
    'ORD002', '2024-05-31', 'CUST002', 
    'ITEM002', 10, 75.50, '2024-05-31', 
    'Jane Smith'
  ), 
  (
    'ORD003', '2024-05-29', 'CUST003', 
    'ITEM003', 15, 87.25, '2024-05-29', 
    'Michael Lee'
  ), 
  (
    'ORD004', '2024-05-29', 'CUST004', 
    'ITEM004', 20, 55.00, '2024-05-29', 
    'Alice Johnson'
  ), 
  (
    'ORD005', '2024-05-30', 'CUST005', 
    'ITEM005', 25, 65.75, '2024-05-30',
    'David Williams'
  ),
  (
    'ORD006', '2024-05-30', 'CUST006', 
    'ITEM006', 30, 75.75, '2024-05-30', 
    'David Willy'
  ),
  (
    'ORD001', '2024-05-31', 'CUST001', 
    'ITEM007', 5, 75.50, '2024-05-31', 
    'John Doe'
  ), 
  (
    'ORD002', '2024-05-31', 'CUST002', 
    'ITEM008', 10, 87.25, '2024-05-31', 
    'Jane Smith'
  ), 
  (
    'ORD003', '2024-05-29', 'CUST003', 
    'ITEM009', 15, 55.00, '2024-05-29', 
    'Michael Lee'
  ), 
  (
    'ORD004', '2024-05-29', 'CUST004', 
    'ITEM010', 20, 65.75, '2024-05-29', 
    'Alice Johnson'
  ), 
  (
    'ORD005', '2024-05-30', 'CUST005', 
    'ITEM011', 25, 75.75, '2024-05-29',
    'David Williams'
  ),
  (
    'ORD006', '2024-05-30', 'CUST006', 
    'ITEM012', 30, 100.00, '2024-05-30', 
    'David Willy'
  ),
  (
    'ORD001', '2024-05-31', 'CUST001', 
    'ITEM013', 5, 87.25, '2024-05-31', 
    'John Doe'
  ), 
  (
    'ORD002', '2024-05-31', 'CUST002', 
    'ITEM014', 10, 55.00, '2024-05-31', 
    'Jane Smith'
  ), 
  (
    'ORD003', '2024-05-29', 'CUST003', 
    'ITEM015', 15, 65.75, '2024-05-29', 
    'Michael Lee'
  ), 
  (
    'ORD004', '2024-05-29', 'CUST004', 
    'ITEM016', 20, 75.75, '2024-05-29', 
    'Alice Johnson'
  ), 
  (
    'ORD005', '2024-05-30', 'CUST005', 
    'ITEM017', 25, 100.00, '2024-05-30', 
    'David Williams'
  ),
  (
    'ORD006', '2024-05-30', 'CUST006', 
    'ITEM018', 30, 75.50, '2024-05-30', 
    'David Willy'
  ),
  (
    'ORD007', '2024-05-25', 'CUST001', 
    'ITEM019', 5, 55.00, '2024-05-25', 
    'John Doe'
  ), 
  (
    'ORD008', '2024-05-26', 'CUST002', 
    'ITEM020', 10, 65.75, '2024-05-26', 
    'Jane Smith'
  ), 
  (
    'ORD009', '2024-05-27', 'CUST003', 
    'ITEM021', 15, 75.75, '2024-05-27', 
    'Michael Lee'
  ), 
  (
    'ORD0010', '2024-05-28', 'CUST004', 
    'ITEM022', 20, 100.00, '2024-05-28', 
    'Alice Johnson'
  ), 
  (
    'ORD0011', '2024-05-26', 'CUST005', 
    'ITEM023', 25, 75.50, '2024-05-26', 
    'David Williams'
  ),
  (
    'ORD0012', '2024-05-26', 'CUST006', 
    'ITEM024', 30, 87.25, '2024-05-26', 
    'David Willy'
  ),
  (
    'ORD007', '2024-05-25', 'CUST001', 
    'ITEM030', 5, 65.75, '2024-05-25', 
    'John Doe'
  ), 
  (
    'ORD008', '2024-05-26', 'CUST002', 
    'ITEM025', 10, 75.75, '2024-05-26', 
    'Jane Smith'
  ), 
  (
    'ORD009', '2024-05-27', 'CUST003', 
    'ITEM026', 15, 100.00, '2024-05-27', 
    'Michael Lee'
  ), 
  (
    'ORD0010', '2024-05-28', 'CUST004', 
    'ITEM027', 20, 75.50, '2024-05-28', 
    'Alice Johnson'
  ), 
  (
    'ORD0011', '2024-05-26', 'CUST005', 
    'ITEM028', 25, 87.25, '2024-05-26', 
    'David Williams'
  ),
  (
    'ORD0012', '2024-05-26', 'CUST006', 
    'ITEM029', 30, 55.00, '2024-05-26', 
    'David Willy'
  ),
  (
    'ORD007', '2024-05-25', 'CUST007', 
    'ITEM031', 5, 75.75, '2024-05-25', 
    'John Doe'
  ), 
  (
    'ORD008', '2024-05-26', 'CUST007', 
    'ITEM032', 10, 87.25, '2024-05-26', 
    'Jane Smith'
  );
SELECT 
  * 
FROM 
  ORDER_BASE.T_SALES_ORDER_DETAIL;