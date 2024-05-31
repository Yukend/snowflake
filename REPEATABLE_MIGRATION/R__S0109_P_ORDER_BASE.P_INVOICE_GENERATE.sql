CREATE 
OR REPLACE PROCEDURE YUKENDHIRAN.ORDER_BASE.P_INVOICE_GENERATE() RETURNS VARCHAR AS $$ BEGIN 
-- DECLARE ERROR_MESSAGE VARCHAR;
-- BEGIN 
INSERT INTO YUKENDHIRAN.ORDER_BASE.T_INVOICE (
  ORDER_ID, ORDER_DATE, CUSTOMER_ID, 
  INVOICE_DATE, TAX_AMOUNT, TOTAL_AMOUNT, 
  DISCOUNT, FINAL_INVOICE_AMT, CREATE_DATE, 
  CREATE_USER
) 
SELECT 
  soh.ORDER_ID, 
  soh.ORDER_DATE, 
  soh.CUSTOMER_ID, 
  CURRENT_DATE AS INVOICE_DATE, 
  soh.TOTAL_AMOUNT * 9 / 100 AS TAX_AMOUNT, 
  soh.TOTAL_AMOUNT, 
  pd.DISCOUNT, 
  (soh.TOTAL_AMOUNT * 9 / 100) + soh.TOTAL_AMOUNT - pd.DISCOUNT AS FINAL_INVOICE_AMT, 
  CURRENT_DATE AS CREATE_DATE, 
  'DEFAULT' AS CREATE_USER 
FROM 
  YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER soh 
  INNER JOIN TABLE(
    YUKENDHIRAN.ORDER_BASE.F_PROMOTION_DISCOUNT()
  ) pd ON soh.ORDER_ID = pd.ORDER_ID;
MERGE INTO YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_HEADER AS target USING (
  SELECT 
    ORDER_ID, 
    DISCOUNT 
  FROM 
    YUKENDHIRAN.ORDER_BASE.T_INVOICE
) AS source ON target.ORDER_ID = source.ORDER_ID WHEN MATCHED THEN 
UPDATE 
SET 
  DISCOUNT = source.DISCOUNT;
MERGE INTO YUKENDHIRAN.ORDER_BASE.T_CUSTOMER AS target USING (
  SELECT 
    CUSTOMER_ID, 
    (
      SUM(TOTAL_AMOUNT) + (
        SUM(TOTAL_AMOUNT) * 9 / 100
      ) - SUM(DISCOUNT)
    ) AS SUM_AMOUNT 
  FROM 
    YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER 
  GROUP BY 
    CUSTOMER_ID
) AS source ON target.CUSTOMER_ID = source.CUSTOMER_ID WHEN MATCHED THEN 
UPDATE 
SET 
  TOTAL_INVOICE_AMOUNT = source.SUM_AMOUNT;
MERGE INTO YUKENDHIRAN.ORDER_BASE.T_CUSTOMER AS target USING (
  SELECT 
    CUSTOMER_ID, 
    CATEGORY, 
    TOTAL_AMOUNT_COUNT, 
    PROMOTION_TYPE, 
    PROMOTION_VALUE 
  FROM 
    (
      SELECT 
        soh.CUSTOMER_ID, 
        CATEGORY, 
        TOTAL_AMOUNT_COUNT 
      FROM 
        (
          SELECT 
            CUSTOMER_ID, 
            COUNT(TOTAL_AMOUNT) AS TOTAL_AMOUNT_COUNT 
          FROM 
            YUKENDHIRAN.ORDER_XFRM.V_SALES_ORDER_HEADER 
          WHERE 
            (TOTAL_AMOUNT * 9 / 100) + TOTAL_AMOUNT - DISCOUNT > 1000 
          GROUP BY 
            CUSTOMER_ID
        ) AS soh 
        INNER JOIN YUKENDHIRAN.ORDER_XFRM.V_CUSTOMER AS cu ON soh.CUSTOMER_ID = cu.CUSTOMER_ID
    ) AS co 
    INNER JOIN YUKENDHIRAN.ORDER_XFRM.V_PROMOTION AS pr ON co.CATEGORY = pr.CUSTOMER_CATEGORY 
  WHERE 
    PROMOTION_TYPE = 'LOYALTY'
) AS source ON target.CUSTOMER_ID = source.CUSTOMER_ID WHEN MATCHED THEN 
UPDATE 
SET 
  LOYALTY_POINTS = source.TOTAL_AMOUNT_COUNT * source.PROMOTION_VALUE;
RETURN 'SUCCESS';
-- EXCEPTION WHEN OTHERS THEN ERROR_MESSAGE := 'Error: ' || ERROR_TEXT();
-- RETURN ERROR_MESSAGE;
-- END;
END;
$$;
