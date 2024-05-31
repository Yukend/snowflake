CREATE 
OR REPLACE PROCEDURE YUKENDHIRAN.ORDER_BASE.P_UPDATE_META_DATA() RETURNS VARCHAR AS $$ BEGIN 
UPDATE 
  YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_DETAIL 
SET 
  TOTAL_AMOUNT = QTY * PRICE;
MERGE INTO YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_HEADER AS target
USING (
  SELECT 
    ORDER_ID,
    SUM(TOTAL_AMOUNT) AS SUM_AMOUNT
  FROM 
    YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_DETAIL
  GROUP BY 
    ORDER_ID
) AS source
ON target.ORDER_ID = source.ORDER_ID
WHEN MATCHED THEN UPDATE SET TOTAL_AMOUNT = source.SUM_AMOUNT;
MERGE INTO YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_HEADER AS target
USING (
  SELECT 
    soh.ORDER_ID,
    COUNT(ITEM_ID) AS COUNT
  FROM 
    YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_HEADER soh 
    INNER JOIN YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_DETAIL sod ON soh.order_id = sod.order_id 
  GROUP BY 
    soh.ORDER_ID
) AS source
ON target.ORDER_ID = source.ORDER_ID
WHEN MATCHED THEN UPDATE SET ITEM_COUNT = source.COUNT;
MERGE INTO YUKENDHIRAN.ORDER_BASE.T_CUSTOMER AS target
USING (
  SELECT 
    CUSTOMER_ID,
    COUNT(ORDER_ID) AS COUNT
  FROM 
    YUKENDHIRAN.ORDER_BASE.T_SALES_ORDER_HEADER
  GROUP BY 
    CUSTOMER_ID
) AS source
ON target.CUSTOMER_ID = source.CUSTOMER_ID
WHEN MATCHED THEN UPDATE SET TOTAL_ORDERS = source.COUNT;
RETURN 'SUCCESS';
END;
$$;
