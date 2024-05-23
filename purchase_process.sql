    CREATE OR REPLACE SCHEMA PURCHASE_BASE;
    CREATE OR REPLACE SCHEMA PURCHASE_XFRM;
    CREATE OR REPLACE SCHEMA PURCHASE_ANALYSIS;
    CREATE OR REPLACE TABLE PURCHASE_BASE.T_SUPPLIER_HDR (
            SUPPLIER_ID VARCHAR(20) PRIMARY KEY,
            ITEM_ID VARCHAR(8),
            ITEM_COST DECIMAL(10, 2),
            SHIP_COST DECIMAL(10, 2),
            LEAD_TIME NUMBER,
            LOCATION VARCHAR(8),
            TAX FLOAT
        );
    INSERT INTO PURCHASE_BASE.T_SUPPLIER_HDR (
            SUPPLIER_ID,
            ITEM_ID,
            ITEM_COST,
            SHIP_COST,
            LEAD_TIME,
            LOCATION,
            TAX
        )
    VALUES (
            'SUP001',
            'ITEM001',
            80.00,
            10.00,
            1,
            'CH',
            12.5
        ),
        (
            'SUP002',
            'ITEM002',
            75.00,
            12.50,
            1,
            'MH',
            10.0
        ),
        (
            'SUP003',
            'ITEM003',
            60.00,
            15.00,
            2,
            'KA',
            15.0
        ),
        (
            'SUP004',
            'ITEM004',
            90.00,
            20.00,
            3,
            'TN',
            18.0
        ),
        (
            'SUP005',
            'ITEM005',
            70.00,
            10.00,
            4,
            'AP',
            12.0
        );
    SELECT *
    FROM PURCHASE_BASE.T_SUPPLIER_HDR;
    CREATE OR REPLACE TABLE PURCHASE_BASE.T_PURCHASE_ORDER_DETAIL (
            PURCHASE_ORDER_NBR VARCHAR(20),
            ITEM_ID VARCHAR(8),
            SUPPLIER_ID VARCHAR(20),
            ORDER_QTY FLOAT,
            PROCUREMENT_COST DECIMAL(10, 2),
            CREATE_USER VARCHAR(50),
            CONSTRAINT pk_purchase_order_detail PRIMARY KEY (PURCHASE_ORDER_NBR, ITEM_ID)
        );
    INSERT INTO PURCHASE_BASE.T_PURCHASE_ORDER_DETAIL (
            PURCHASE_ORDER_NBR,
            ITEM_ID,
            SUPPLIER_ID,
            ORDER_QTY,
            PROCUREMENT_COST,
            CREATE_USER
        )
    VALUES (
            'PO1234',
            'ITEM001',
            'SUP001',
            50,
            100.00,
            'John Doe'
        ),
        (
            'PO1234',
            'ITEM002',
            'SUP002',
            25,
            75.50,
            'John Doe'
        ),
        (
            'PO5678',
            'ITEM003',
            'SUP003',
            50,
            87.25,
            'Jane Smith'
        ),
        (
            'PO5678',
            'ITEM004',
            'SUP004',
            25,
            55.00,
            'Jane Smith'
        ),
        (
            'PO9012',
            'ITEM005',
            'SUP005',
            100,
            65.75,
            'Michael Lee'
        );
    SELECT *
    FROM PURCHASE_BASE.T_PURCHASE_ORDER_DETAIL;
    CREATE OR REPLACE TABLE PURCHASE_BASE.T_PURCHASE_ORDER_HDR (
            PURCHASE_ORDER_NBR VARCHAR(20) PRIMARY KEY,
            SUPPLIER_ID VARCHAR(20) FOREIGN KEY REFERENCES PURCHASE_BASE.T_SUPPLIER_HDR(SUPPLIER_ID),
            PLANT_LOCATION VARCHAR(20),
            TOTAL_QTY FLOAT,
            TOTAL_AMOUNT DECIMAL(10, 2),
            REQUEST_DATE DATE,
            ANTICIPATE_DATE DATE,
            SUPPLIER_CONFIRM_DATE DATE,
            CREATE_DATE DATE,
            CREATE_USER VARCHAR(50)
        );
    INSERT INTO PURCHASE_BASE.T_PURCHASE_ORDER_HDR (
            PURCHASE_ORDER_NBR,
            SUPPLIER_ID,
            PLANT_LOCATION,
            TOTAL_QTY,
            TOTAL_AMOUNT,
            REQUEST_DATE,
            ANTICIPATE_DATE,
            SUPPLIER_CONFIRM_DATE,
            CREATE_DATE,
            CREATE_USER
        )
    VALUES (
            'PO1234',
            'SUP001',
            'INDIA',
            100,
            5000.00,
            TO_DATE('2024-05-25', 'YYYY-MM-DD'),
            TO_DATE('2024-05-25', 'YYYY-MM-DD'),
            TO_DATE('2024-05-25', 'YYYY-MM-DD'),
            TO_DATE('2024-05-25', 'YYYY-MM-DD'),
            'John Doe'
        ),
        (
            'PO5678',
            'SUP002',
            'INDIA',
            75,
            2250.75,
            TO_DATE('2024-05-26', 'YYYY-MM-DD'),
            TO_DATE('2024-05-26', 'YYYY-MM-DD'),
            TO_DATE('2024-05-26', 'YYYY-MM-DD'),
            TO_DATE('2024-05-26', 'YYYY-MM-DD'),
            'Jane Smith'
        ),
        (
            'PO9012',
            'SUP003',
            'INDIA',
            150,
            7800.50,
            TO_DATE('2024-05-27', 'YYYY-MM-DD'),
            TO_DATE('2024-05-27', 'YYYY-MM-DD'),
            TO_DATE('2024-05-27', 'YYYY-MM-DD'),
            TO_DATE('2024-05-27', 'YYYY-MM-DD'),
            'Michael Lee'
        ),
        (
            'PO3456',
            'SUP004',
            'INDIA',
            40,
            1800.00,
            TO_DATE('2024-05-28', 'YYYY-MM-DD'),
            TO_DATE('2024-05-28', 'YYYY-MM-DD'),
            TO_DATE('2024-05-28', 'YYYY-MM-DD'),
            TO_DATE('2024-05-28', 'YYYY-MM-DD'),
            'Alice Johnson'
        ),
        (
            'PO7890',
            'SUP005',
            'INDIA',
            60,
            3900.00,
            TO_DATE('2024-05-29', 'YYYY-MM-DD'),
            TO_DATE('2024-05-29', 'YYYY-MM-DD'),
            TO_DATE('2024-05-29', 'YYYY-MM-DD'),
            TO_DATE('2024-05-29', 'YYYY-MM-DD'),
            'David Williams'
        );
    SELECT *
    FROM PURCHASE_BASE.T_PURCHASE_ORDER_HDR;
    CREATE OR REPLACE VIEW PURCHASE_XFRM.V_PURCHASE_HDR AS
    SELECT po.PURCHASE_ORDER_NBR,
        po.SUPPLIER_ID,
        po.PLANT_LOCATION,
        po.TOTAL_QTY,
        po.TOTAL_AMOUNT,
        po.REQUEST_DATE,
        po.REQUEST_DATE + s.LEAD_TIME AS SUPPLIER_CONFIRM_DATE,
        po.CREATE_DATE,
        po.CREATE_USER
    FROM PURCHASE_BASE.T_PURCHASE_ORDER_HDR po
        JOIN PURCHASE_BASE.T_SUPPLIER_HDR s ON po.SUPPLIER_ID = s.SUPPLIER_ID;
    SELECT *
    FROM PURCHASE_XFRM.V_PURCHASE_HDR;
    CREATE OR REPLACE VIEW PURCHASE_XFRM.V_PURCHASE_DETAIL AS
    SELECT pod.PURCHASE_ORDER_NBR,
        pod.ITEM_ID,
        pod.SUPPLIER_ID,
        pod.ORDER_QTY,
        (s.ITEM_COST + s.SHIP_COST) * (1 + s.TAX / 100) AS PROCUREMENT_COST,
        pod.CREATE_USER
    FROM PURCHASE_BASE.T_PURCHASE_ORDER_DETAIL pod
        JOIN PURCHASE_BASE.T_SUPPLIER_HDR s ON pod.SUPPLIER_ID = s.SUPPLIER_ID
        AND pod.ITEM_ID = s.ITEM_ID;
    SELECT *
    FROM PURCHASE_XFRM.V_PURCHASE_DETAIL;
    CREATE OR REPLACE VIEW PURCHASE_XFRM.V_SUPPLIER_HDR AS
    SELECT *
    FROM PURCHASE_BASE.T_SUPPLIER_HDR;
    SELECT *
    FROM PURCHASE_XFRM.V_SUPPLIER_HDR;
    CREATE OR REPLACE VIEW PURCHASE_ANALYSIS.V_PURCHASE_HDR AS
    SELECT po.PURCHASE_ORDER_NBR,
        po.SUPPLIER_ID,
        po.PLANT_LOCATION,
        po.TOTAL_QTY,
        po.ANTICIPATE_DATE,
        po.SUPPLIER_CONFIRM_DATE,
        po.REQUEST_DATE,
        po.CREATE_DATE,
        po.CREATE_USER
    FROM PURCHASE_BASE.T_PURCHASE_ORDER_HDR po;
    SELECT *
    FROM PURCHASE_ANALYSIS.V_PURCHASE_HDR;
    CREATE OR REPLACE VIEW PURCHASE_ANALYSIS.V_PURCHASE_HDR_CORE AS
    SELECT ph.PURCHASE_ORDER_NBR,
        ph.SUPPLIER_ID,
        ph.PLANT_LOCATION,
        ph.TOTAL_QTY,
        ph.TOTAL_AMOUNT,
        ph.REQUEST_DATE,
        ph.SUPPLIER_CONFIRM_DATE,
        ph.CREATE_DATE,
        ph.CREATE_USER,
        pod.ITEM_ID,
        pod.ORDER_QTY,
        pod.PROCUREMENT_COST,
        FROM PURCHASE_XFRM.V_PURCHASE_HDR ph
        JOIN PURCHASE_XFRM.V_PURCHASE_DETAIL pod ON ph.SUPPLIER_ID = pod.SUPPLIER_ID;
    SELECT *
    FROM PURCHASE_ANALYSIS.V_PURCHASE_HDR_CORE;
    CREATE OR REPLACE PROCEDURE PURCHASE_BASE.P_PURCHASE_HDR_CORE() RETURNS VARCHAR AS $$ BEGIN
    CREATE OR REPLACE VIEW PURCHASE_ANALYSIS.V_PURCHASE_DETAIL_CORE AS
    SELECT *
    FROM PURCHASE_ANALYSIS.V_PURCHASE_HDR
    WHERE REQUEST_DATE > CURRENT_DATE
        AND PLANT_LOCATION = 'INDIA'
        AND SUPPLIER_CONFIRM_DATE < DATEADD(DAY, 90, CURRENT_DATE);
    RETURN 'SUCCESS';
    END;
    $$;
    CALL PURCHASE_BASE.P_PURCHASE_HDR_CORE();
    SELECT *
    FROM PURCHASE_ANALYSIS.V_PURCHASE_HDR;
    CREATE OR REPLACE FUNCTION PURCHASE_BASE.F_PURCHASE_SUPPLIER_RANK() RETURNS TABLE (
            SUPPLIER_ID VARCHAR(20),
            PRIORITY_RANK INT,
            PROCUREMENT_COST FLOAT,
            LEAD_TIME INT
        ) AS $$
    SELECT sup.SUPPLIER_ID,
        RANK() OVER (
            ORDER BY pd.PROCUREMENT_COST ASC,
                sup.LEAD_TIME ASC
        ) AS PRIORITY_RANK,
        pd.PROCUREMENT_COST,
        sup.LEAD_TIME
    FROM PURCHASE_XFRM.V_SUPPLIER_HDR sup
        INNER JOIN PURCHASE_XFRM.V_PURCHASE_DETAIL pd ON pd.SUPPLIER_ID = sup.SUPPLIER_ID $$;
    SELECT *
    FROM TABLE(PURCHASE_BASE.F_PURCHASE_SUPPLIER_RANK());
    CREATE OR REPLACE VIEW PURCHASE_ANALYSIS.V_PURCHASE_PLAN AS
    SELECT ph.*,
        pr.PRIORITY_RANK,
        pr.PROCUREMENT_COST
    FROM TABLE(PURCHASE_BASE.F_PURCHASE_SUPPLIER_RANK()) pr
        INNER JOIN PURCHASE_ANALYSIS.V_PURCHASE_DETAIL_CORE ph ON ph.SUPPLIER_ID = pr.SUPPLIER_ID;
    SELECT *
    FROM PURCHASE_ANALYSIS.V_PURCHASE_PLAN;