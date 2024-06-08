CREATE 
OR REPLACE PROCEDURE Y_SIM_BOM.BMATHUB_XFRM.P_BMATHUB_BASE_P_ROOT_CORE_BUILD() 
RETURNS VARCHAR 
LANGUAGE SQL 
AS 
$$ 
BEGIN 
INSERT INTO Y_SIM_BOM.BMATHUB_BASE.T_COMPRESS_BOM_CORE (
  INPUT_ITEM_ID, ITEM_CLASS_NM, OUTPUT_ITEM_ID, 
  BOM_NUM, LOC
) 
SELECT 
  INPUT_ITEM_ID, 
  mr.ITEM_CLASS_NM, 
  OUTPUT_ITEM_ID, 
  100 + ROW_NUMBER() OVER (
    ORDER BY 
      INPUT_ITEM_ID
  ) AS BOM_NUM, 
  mr.LOC 
FROM 
  (
    SELECT 
      INPUT_ITEM_ID, 
      ITEM_CLASS_NM, 
      OUTPUT_ITEM_ID, 
      LOC 
    FROM 
      Y_SIM_BOM.BMATHUB_XFRM.V_ORIG_BOM 
    UNION 
    SELECT 
      ob.OUTPUT_ITEM_ID AS INPUT_ITEM_ID, 
      idr.ITEM_CLASS_NM, 
      '' AS OUTPUT_ITEM_ID, 
      LOC 
    FROM 
      Y_SIM_BOM.BMATHUB_XFRM.V_ORIG_BOM ob 
      INNER JOIN Y_SIM_BOM.BMATHUB_XFRM.V_ITEM_DETAIL_ROOT idr ON ob.OUTPUT_ITEM_ID = idr.ITEM_ID 
    WHERE 
      idr.ITEM_CLASS_NM = 'IC' 
      AND idr.DELETE_IND = FALSE
  ) bc 
  INNER JOIN Y_SIM_BOM.BMATHUB_XFRM.V_METADATA_RULES mr ON bc.ITEM_CLASS_NM = mr.ITEM_CLASS_NM;
RETURN 'Data loaded successfully.';
END;
$$;
