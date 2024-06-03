INSERT INTO YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_HEADER (
  ORDER_ID, 
  ORDER_DATE, 
  STATUS, 
  CUSTOMER_ID, 
  COUPON, 
  CREATE_DATE, 
  CREATE_USER
)
WITH CustomerOrders AS (
  SELECT 
    cu.CUSTOMER_ID,
    cu.CREATE_DATE,
    cu.STATUS,
    cu.CATEGORY,
    cu.CREATE_USER,
    SEQ4() % 3 + 3 AS NUM_ORDERS -- Generate 3 to 5 orders per customer
  FROM 
    YUKENDHIRAN.ORDER_BASE.T_CUSTOMER cu
  WHERE 
    cu.STATUS = 'ACTIVE' -- Only generate orders for active customers
  QUALIFY 
    ROW_NUMBER() OVER (PARTITION BY cu.CUSTOMER_ID ORDER BY cu.CREATE_DATE) <= 1
),
OrderGenerator AS (
  SELECT 
    co.CUSTOMER_ID,
    co.CREATE_DATE,
    co.STATUS,
    co.CATEGORY,
    co.CREATE_USER,
    co.NUM_ORDERS,
    SEQ4() AS SEQ,
    ROW_NUMBER() OVER (PARTITION BY co.CUSTOMER_ID ORDER BY SEQ4()) AS ORDER_SEQ
  FROM 
    CustomerOrders co,
    TABLE(GENERATOR(ROWCOUNT => 5)) -- Generate up to 5 orders per customer
)
SELECT 
  'ORD' || LPAD(ROW_NUMBER() OVER (ORDER BY CUSTOMER_ID, ORDER_SEQ), 4, '0') AS ORDER_ID,
  DATEADD(DAY, ORDER_SEQ, CURRENT_DATE()) AS ORDER_DATE, -- Ensure each order date is greater than today's date
  CASE 
    WHEN STATUS = 'INACTIVE' THEN 'CLOSED'
    ELSE 'OPEN'
  END AS STATUS,
  CUSTOMER_ID,
  CASE 
    WHEN CATEGORY = 'REGULAR' THEN 'COUPON_' || CHR(88 + (SEQ % 3)) -- Generates 'COUPON_X', 'COUPON_Y', 'COUPON_Z'
    ELSE NULL
  END AS COUPON,
  DATEADD(DAY, ORDER_SEQ, CURRENT_DATE()) AS CREATE_DATE, -- Same as ORDER_DATE
  CREATE_USER
FROM 
  OrderGenerator
WHERE 
  ORDER_SEQ <= NUM_ORDERS; -- Limit orders to the specified number per customer
