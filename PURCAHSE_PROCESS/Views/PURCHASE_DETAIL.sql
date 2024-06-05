CREATE 
OR REPLACE VIEW PURCHASE_XFRM.V_PURCHASE_DETAIL AS 
SELECT 
  pod.PURCHASE_ORDER_NBR, 
  pod.ITEM_ID, 
  pod.SUPPLIER_ID, 
  pod.ORDER_QTY, 
  (s.ITEM_COST + s.SHIP_COST) * (1 + s.TAX / 100) AS PROCUREMENT_COST, 
  pod.CREATE_USER 
FROM 
  PURCHASE_BASE.T_PURCHASE_ORDER_DETAIL pod 
  JOIN PURCHASE_BASE.T_SUPPLIER_HDR s ON pod.SUPPLIER_ID = s.SUPPLIER_ID 
  AND pod.ITEM_ID = s.ITEM_ID;
SELECT 
  * 
FROM 
  PURCHASE_XFRM.V_PURCHASE_DETAIL;