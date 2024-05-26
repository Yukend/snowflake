CREATE 
OR REPLACE TABLE ORDER_BASE.T_SALES_ORDER_HEADER (
  ORDER_ID VARCHAR(100), 
  ORDER_DATE DATE, 
  STATUS VARCHAR(100), 
  CUSTOMER_ID VARCHAR(100), 
  ITEM_COUNT INTEGER DEFAULT 0, 
  TOTAL_AMOUNT NUMBER(12, 2) DEFAULT 0, 
  DISCOUNT NUMBER(10, 2) DEFAULT 0, 
  COUPON VARCHAR(100),
  CREATE_DATE DATE, 
  CREATE_USER VARCHAR(100)
);
INSERT INTO ORDER_BASE.T_SALES_ORDER_HEADER (
  ORDER_ID, ORDER_DATE, STATUS, CUSTOMER_ID, 
  COUPON, CREATE_DATE, CREATE_USER
) 
VALUES 
  (
    'ORD001', '2024-05-25', 'ACTIVE', 'CUST001', 
    null, '2024-05-25', 'John Doe'
  ), 
  (
    'ORD002', '2024-05-26', 'CLOSED','CUST002',
    null, '2024-05-26', 'Jane Smith'
  ), 
  (
    'ORD003', '2024-05-27', 'ACTIVE', 'CUST003', 
    null, '2024-05-27', 'Michael Lee'
  ), 
  (
    'ORD004', '2024-05-28', 'CLOSED','CUST004',
    'COUPON_X', '2024-05-28', 'Alice Johnson'
  ), 
  (
    'ORD005', '2024-05-29', 'ACTIVE', 'CUST005', 
    'COUPON_Y', '2024-05-29', 'David Williams'
  ),
  (
    'ORD006', '2024-05-30', 'ACTIVE', 'CUST006', 
    'COUPON_Z', '2024-05-30', 'David Willy'
  ),
  (
    'ORD007', '2024-05-25', 'ACTIVE', 'CUST001', 
    null, '2024-05-25', 'John Doe'
  ), 
  (
    'ORD008', '2024-05-26', 'CLOSED','CUST002',
    null, '2024-05-26', 'Jane Smith'
  ), 
  (
    'ORD009', '2024-05-27', 'ACTIVE', 'CUST003', 
    null, '2024-05-27', 'Michael Lee'
  ), 
  (
    'ORD0010', '2024-05-28', 'CLOSED','CUST004',
    'COUPON_X', '2024-05-28', 'Alice Johnson'
  ), 
  (
    'ORD0011', '2024-05-29', 'ACTIVE', 'CUST005', 
    'COUPON_Y', '2024-05-29', 'David Williams'
  ),
  (
    'ORD0012', '2024-05-30', 'ACTIVE', 'CUST006', 
    'COUPON_Z', '2024-05-30', 'David Willy'
  );
SELECT 
  * 
FROM 
  ORDER_BASE.T_SALES_ORDER_HEADER;