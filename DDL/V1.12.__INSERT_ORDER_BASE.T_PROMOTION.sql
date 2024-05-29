INSERT INTO ORDER_BASE.T_PROMOTION (
  PROMOTION_ID, 
  CUSTOMER_CATEGORY, 
  PROMOTION_TYPE, 
  PROMOTION_VALUE, 
  COMMENT
) 
VALUES 
  (
    '1001', 'GOLD', 'DISCOUNT', 5, 'PERCENT'
  ), 
  (
    '1002', 'SILVER', 'DISCOUNT', 3, 'PERCENT'
  ), 
  (
    '1003', 'BRONZE', 'DISCOUNT', 1, 'PERCENT'
  ), 
  (
    '1004', 'REGULAR', 'COUPON_X', 0.03, 
    'AMOUNT'
  ), 
  (
    '1005', 'REGULAR', 'COUPON_Y', 0.02, 
    'AMOUNT'
  ), 
  (
    '1006', 'REGULAR', 'COUPON_Z', 0.01, 
    'AMOUNT'
  ), 
  (
    '1007', 'GOLD', 'LOYALTY', 100, 'POINTS/1000 SPENT'
  ), 
  (
    '1008', 'SILVER', 'LOYALTY', 50, 'POINTS/1000 SPENT'
  ), 
  (
    '1009', 'BRONZE', 'LOYALTY', 30, 'POINTS/1000 SPENT'
  );
