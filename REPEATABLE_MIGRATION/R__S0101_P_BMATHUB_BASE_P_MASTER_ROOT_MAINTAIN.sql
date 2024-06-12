CREATE 
OR REPLACE PROCEDURE Y_SIM_BOM.BMATHUB_BASE.P_MASTER_ROOT_MAINTAIN() 
RETURNS VARCHAR
AS 
$$
BEGIN 
PUT file:///home/ubuntu/Documents/snowflake/item.csv @y_sim_bom.master_data.sim_bom;
PUT file:///home/ubuntu/Documents/snowflake/location.csv @y_sim_bom.master_data.sim_bom;
PUT file:///home/ubuntu/Documents/snowflake/orig_bom.csv @y_sim_bom.master_data.sim_bom;
COPY INTO Y_SIM_BOM.MASTER_DATA.ITEM
FROM @y_sim_bom.master_data.sim_bom/item.csv.gz
FILE_FORMAT = (TYPE = CSV FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1 COMPRESSION = 'gzip');
COPY INTO Y_SIM_BOM.MASTER_DATA.LOCATION
FROM @y_sim_bom.master_data.sim_bom/location.csv.gz
FILE_FORMAT = (TYPE = CSV FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1 COMPRESSION = 'gzip');
COPY INTO Y_SIM_BOM.MASTER_DATA.ORIG_BOM
FROM @y_sim_bom.master_data.sim_bom/orig_bom.csv.gz
FILE_FORMAT = (TYPE = CSV FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1 COMPRESSION = 'gzip');
MERGE INTO Y_SIM_BOM.BMATHUB_BASE.T_ITEM_DETAIL_ROOT AS target 
  USING (
    SELECT 
    DISTINCT 
      ITEM_ID,
      ITEM_CLASS_NM,
      ITEM_DSC,
      DELETE_IND 
    FROM 
      Y_SIM_BOM.MASTER_DATA.ITEM
  ) AS source 
  ON (target.ITEM_ID = source.ITEM_ID) 
  WHEN MATCHED THEN 
UPDATE 
SET 
  target.ITEM_CLASS_NM = source.ITEM_CLASS_NM, 
  target.ITEM_DSC = source.ITEM_DSC, 
  target.DELETE_IND = source.DELETE_IND WHEN NOT MATCHED THEN INSERT (
    ITEM_ID, ITEM_CLASS_NM, ITEM_DSC, 
    DELETE_IND
  ) 
VALUES 
  (
    source.ITEM_ID, source.ITEM_CLASS_NM, 
    source.ITEM_DSC, source.DELETE_IND
  );
MERGE INTO Y_SIM_BOM.BMATHUB_BASE.T_LOCATION_ROOT AS target 
  USING (
    SELECT 
    DISTINCT
      ITEM_ID,
      ITEM_CLASS_NM,
      LOCATION_ID
  FROM
    Y_SIM_BOM.MASTER_DATA.LOCATION
  ) AS source 
  ON (target.ITEM_ID = source.ITEM_ID)
  WHEN MATCHED THEN 
UPDATE 
SET 
  target.ITEM_CLASS_NM = source.ITEM_CLASS_NM, 
  target.LOCATION_ID = source.LOCATION_ID WHEN NOT MATCHED THEN INSERT (
    ITEM_ID, ITEM_CLASS_NM, LOCATION_ID
  ) 
VALUES 
  (
    source.ITEM_ID, source.ITEM_CLASS_NM, 
    source.LOCATION_ID
  );
MERGE INTO Y_SIM_BOM.BMATHUB_BASE.T_ORIG_BOM AS target 
  USING (
    SELECT 
    DISTINCT
      INPUT_ITEM_ID,
      ITEM_CLASS_NM,
      OUTPUT_ITEM_ID,
      LOC
  FROM
    Y_SIM_BOM.MASTER_DATA.ORIG_BOM
  ) AS source 
  ON (target.INPUT_ITEM_ID = source.INPUT_ITEM_ID) 
  WHEN MATCHED THEN 
UPDATE 
SET 
  target.ITEM_CLASS_NM = source.ITEM_CLASS_NM, 
  target.OUTPUT_ITEM_ID = source.OUTPUT_ITEM_ID, 
  target.LOC = source.LOC WHEN NOT MATCHED THEN INSERT (
    INPUT_ITEM_ID, ITEM_CLASS_NM, OUTPUT_ITEM_ID, 
    LOC
  ) 
VALUES 
  (
    source.INPUT_ITEM_ID, source.ITEM_CLASS_NM, 
    source.OUTPUT_ITEM_ID, source.LOC
  );
RETURN 'Data loaded successfully.';
END;
$$;
