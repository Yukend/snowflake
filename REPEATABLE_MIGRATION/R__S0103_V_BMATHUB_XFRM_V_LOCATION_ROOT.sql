CREATE OR REPLACE VIEW Y_SIM_BOM.BMATHUB_XFRM.V_LOCATION AS
SELECT
    ITEM_ID,
    ITEM_CLASS_NM,
    LOCATION_ID
FROM
    Y_SIM_BOM.BMATHUB_BASE.T_LOCATION_ROOT;
