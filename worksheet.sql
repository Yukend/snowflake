CREATE SCHEMA MASTER_DATA;
CREATE SCHEMA BMATHUB_BASE;
CREATE SCHEMA BMATHUB_XFRM;
CREATE SCHEMA BMATHUB_ANALYSIS;
CREATE OR REPLACE STAGE sim_bom;
call Y_SIM_BOM.BMATHUB_BASE.P_MASTER_ROOT_MAINTAIN();
call Y_SIM_BOM.BMATHUB_BASE.P_ROOT_CORE_BUILD();
truncate table Y_SIM_BOM.MASTER_DATA.ITEM;
truncate table Y_SIM_BOM.MASTER_DATA.LOCATION;
truncate table Y_SIM_BOM.MASTER_DATA.ORIG_BOM;
truncate table Y_SIM_BOM.BMATHUB_BASE.T_ITEM_DETAIL_ROOT;
truncate table Y_SIM_BOM.BMATHUB_BASE.T_COMPRESS_BOM_CORE;
truncate table Y_SIM_BOM.BMATHUB_BASE.T_LOCATION_ROOT;
truncate table Y_SIM_BOM.BMATHUB_BASE.T_METADATA_RULES;
truncate table Y_SIM_BOM.BMATHUB_BASE.T_ORIG_BOM;
SELECT * FROM Y_SIM_BOM.BMATHUB_ANALYSIS.V_SIM_BOM;
INSERT INTO Y_SIM_BOM.MASTER_DATA.ITEM (ITEM_ID,ITEM_CLASS_NM,ITEM_DSC,DELETE_IND)
VALUES
('1999-100-101','UPI_SORT','S8PIACVE',FALSE),	
('1999-100-102','UPI_SORT','8PP5CVB',FALSE),	
('1999-100-103','UPI_SORT','S8PIACVE',FALSE),	
('1999-100-104','UPI_SORT','S8PP8DVB',FALSE),	
('1999-100-105','UPI_SORT','S8PA7AVA',FALSE),	
('1999-100-106','UPI_SORT','F8PNLCVB',FALSE),	
('1999-100-107','UPI_SORT','S8PFUAVCR',FALSE),	
('1999-100-108','UPI_SORT','S88ILTVE',FALSE),	
('1999-100-109','UPI_SORT','S8PIACVBD',FALSE),	
('1999-100-110','UPI_SORT','8PNVCVB',FALSE),	
('1999-100-111','UPI_SORT','S8PCAFVC',FALSE),	
('1999-100-112','UPI_SORT','S8PA7AVA',FALSE),	
('1999-100-113','UPI_SORT','B88AACVAB',FALSE),	
('1999-100-114','UPI_SORT','S8PIARVDD',FALSE),	
('1999-100-115','UPI_SORT','S88ABGVAA',FALSE),	
('1999-100-116','UPI_SORT','S8PP6AVAA',FALSE),	
('1999-100-117','UPI_SORT','8PP5CVB',FALSE),	
('1999-100-118','UPI_SORT','S8PIACVE',FALSE),	
('1999-100-119','UPI_SORT','S8PP8DVB',FALSE),	
('1999-100-120','UPI_SORT','F8PNLCVB',FALSE),	
('1999-100-121','UPI_SORT','S8PFUAVCR',FALSE),	
('1999-100-122','UPI_SORT','S88ILTVE',FALSE),	
('1999-100-123','UPI_SORT','S8PIACVBD',FALSE),	
('1999-100-124','UPI_SORT','B88AACVAB',FALSE),	
('1999-100-125','UPI_SORT','S8PIARVDD',FALSE),	
('1999-100-126','UPI_SORT','S88ABGVAA',FALSE),	
('1999-100-127','UPI_SORT','S8PP6AVAA',FALSE),	
('1999-100-128','UPI_SORT','8PP5CVB',FALSE),	
('1999-100-129','UPI_SORT','S8PIACVE',FALSE),	
('1999-100-130','UPI_SORT','S8PP8DVB',FALSE),	
('1999-100-131','UPI_SORT','F8PNLCVB',FALSE),	
('1999-100-132','UPI_SORT','S8PP6AVAA',FALSE),	
('1999-100-133','UPI_SORT','8PP5CVB',FALSE),	
('1999-100-134','UPI_SORT','S8PIACVE',FALSE),	
('1999-100-135','UPI_SORT','S8PP8DVB',FALSE),	
('1999-100-136','UPI_SORT','F8PNLCVB',FALSE),	
('1999-100-137','UPI_SORT','S8PFUAVCR',FALSE),	
('1999-100-138','UPI_SORT','S8PP8DVB',FALSE),	
('1999-100-139','UPI_SORT','F8PNLCVB',FALSE),	
('1999-100-140','UPI_SORT','S8PFUAVCR',FALSE),	
('1999-100-141','UPI_SORT','S88ILTVE',FALSE),	
('1999-100-142','UPI_SORT','S8PIACVBD',FALSE),	
('1999-100-143','UPI_SORT','8PNVCVB',FALSE),	
('1999-100-144','UPI_SORT','S8PP8DVB',FALSE),	
('1999-100-145','UPI_SORT','F8PNLCVB',FALSE),	
('1999-100-146','UPI_SORT','S8PFUAVCR',FALSE),	
('1999-100-147','UPI_SORT','S88ILTVE',FALSE),	
('1999-100-148','UPI_SORT','S8PIACVBD',FALSE),	
('1999-100-149','UPI_SORT','8PNVCVB',FALSE),	
('1999-100-150','UPI_SORT','S88ILTVE',FALSE),	
('1999-100-151','UPI_SORT','S8PP8DVB',FALSE),	
('1999-100-152','UPI_SORT','F8PNLCVB',FALSE),	
('1999-100-153','UPI_SORT','S8PFUAVCR',FALSE),	
('1999-100-154','UPI_SORT','S88ILTVE',FALSE),	
('1999-100-155','UPI_SORT','S8PIACVBD',FALSE),	
('1999-100-156','UPI_SORT','8PNVCVB',FALSE),	
('1999-100-157','UPI_SORT','S88ABGVAA',FALSE),	
('1999-100-158','UPI_SORT','S8PP6AVAA',FALSE),	
('1999-100-159','UPI_SORT','8PP5CVB',FALSE),	
('1999-100-160','UPI_SORT','S8PP6AVAA',FALSE),	
('1999-100-161','UPI_SORT','8PP5CVB',FALSE),	
('1999-100-162','UPI_SORT','S8PIACVE',FALSE),	
('1999-100-163','UPI_SORT','8PNVCVB',FALSE),	
('1999-100-164','UPI_SORT','S8PCAFVC',FALSE),	
('1999-100-165','UPI_SORT','S8PA7AVA',FALSE),	
('1999-100-166','UPI_SORT','B88AACVAB',FALSE),	
('1999-100-167','UPI_SORT','8PP5CVB',FALSE),	
('1999-100-168','UPI_SORT','S8PIACVE',FALSE),	
('1999-100-169','UPI_SORT','S8PP8DVB',FALSE),	
('1999-100-170','UPI_SORT','F8PNLCVB',FALSE),	
('1999-100-171','UPI_SORT','B88AACVAB',FALSE),	
('1999-100-172','UPI_SORT','S8PIARVDD',FALSE),	
('1999-100-173','UPI_SORT','S88ABGVAA',FALSE),	
('1999-100-174','UPI_SORT','S8PP6AVAA',FALSE),	
('1999-100-175','UPI_SORT','8PP5CVB',FALSE),	
('1999-100-176','UPI_SORT','S8PIACVE',FALSE),	
('1999-100-177','UPI_SORT','S8PFUAVCR',FALSE),	
('1999-100-178','UPI_SORT','S88ILTVE',FALSE),
('1999-100-179','UPI_SORT','8PP5CVB',TRUE),	
('1999-100-180','UPI_SORT','S8PIACVE',TRUE),	
('1999-100-181','UPI_SORT','S8PP8DVB',TRUE),	
('1999-100-182','UPI_SORT','F8PNLCVB',TRUE),	
('1999-100-183','UPI_SORT','B88AACVAB',TRUE),	
('1999-100-184','UPI_SORT','S8PIARVDD',TRUE),	
('1999-200-101','UPI_DIE_PREP','S8PP6AVAA',FALSE),	
('1999-200-102','UPI_DIE_PREP','S8PIARVDD',FALSE),	
('1999-200-103','UPI_DIE_PREP','S88ABGVAA',FALSE),	
('1999-200-104','UPI_DIE_PREP','S8PCAFVC',FALSE),
('1999-200-105','UPI_DIE_PREP','S8PA7AVA',FALSE),	
('1999-200-106','UPI_DIE_PREP','F8PNLCVB',FALSE),	
('1999-200-107','UPI_DIE_PREP','S8PIACVE',FALSE),	
('1999-200-108','UPI_DIE_PREP','S88ABGVAA',FALSE),	
('1999-200-109','UPI_DIE_PREP','S8PFUAVCR',FALSE),	
('1999-200-110','UPI_DIE_PREP','S8PCAFVC',FALSE),	
('1999-200-111','UPI_DIE_PREP','S8PIACVE',FALSE),	
('1999-200-112','UPI_DIE_PREP','S8PIARVDD',FALSE),	
('1999-200-113','UPI_DIE_PREP','S8PP6AVAA',FALSE),	
('1999-200-114','UPI_DIE_PREP','S8PA7AVA',FALSE),	
('1999-200-115','UPI_DIE_PREP','B88AACVAB',FALSE),	
('1999-200-116','UPI_DIE_PREP','8PP5CVB',FALSE),	
('1999-200-117','UPI_DIE_PREP','S88ABGVAA',FALSE),	
('1999-200-118','UPI_DIE_PREP','F8PNLCVB',FALSE),	
('1999-200-119','UPI_DIE_PREP','8PNVCVB',FALSE),	
('1999-200-120','UPI_DIE_PREP','S8PCAFVC',FALSE),	
('1999-200-121','UPI_DIE_PREP','S8PIARVDD',FALSE),	
('1999-200-122','UPI_DIE_PREP','S88ILTVE',FALSE),	
('1999-200-123','UPI_DIE_PREP','S8PIARVDD',FALSE),	
('1999-200-124','UPI_DIE_PREP','S8PIACVE',FALSE),	
('1999-200-125','UPI_DIE_PREP','S8PIACVBD',FALSE),	
('1999-200-126','UPI_DIE_PREP','B88AACVAB',FALSE),	
('1999-200-127','UPI_DIE_PREP','S8PCAFVC',FALSE),	
('1999-200-128','UPI_DIE_PREP','S8PIACVE',FALSE),	
('1999-200-129','UPI_DIE_PREP','S8PIACVBD',FALSE),	
('1999-200-130','UPI_DIE_PREP','S8PP8DVB',FALSE),	
('1999-200-131','UPI_DIE_PREP','F8PNLCVB',FALSE),	
('1999-200-132','UPI_DIE_PREP','S88ABGVAA',FALSE),	
('1999-200-133','UPI_DIE_PREP','S88ABGVAA',FALSE),	
('1999-200-134','UPI_DIE_PREP','S8PCAFVC',FALSE),	
('1999-200-135','UPI_DIE_PREP','S8PP8DVB',FALSE),	
('1999-200-136','UPI_DIE_PREP','S8PP6AVAA',FALSE),	
('1999-200-137','UPI_DIE_PREP','S8PIARVDD',FALSE),	
('1999-200-138','UPI_DIE_PREP','S8PCAFVC',FALSE),	
('1999-200-139','UPI_DIE_PREP','S8PIARVDD',FALSE),	
('1999-200-140','UPI_DIE_PREP','S88ABGVAA',FALSE),	
('1999-200-141','UPI_DIE_PREP','S88ILTVE',FALSE),	
('1999-200-142','UPI_DIE_PREP','B88AACVAB',FALSE),	
('1999-200-143','UPI_DIE_PREP','S8PP6AVAA',FALSE),	
('1999-200-144','UPI_DIE_PREP','S8PA7AVA',FALSE),	
('1999-200-145','UPI_DIE_PREP','B88AACVAB',FALSE),	
('1999-200-146','UPI_DIE_PREP','S88ILTVE',FALSE),	
('1999-200-147','UPI_DIE_PREP','S8PFUAVCR',FALSE),	
('1999-200-148','UPI_DIE_PREP','F8PNLCVB',FALSE),	
('1999-200-149','UPI_DIE_PREP','8PNVCVB',FALSE),	
('1999-200-150','UPI_DIE_PREP','S8PP8DVB',FALSE),	
('1999-200-151','UPI_DIE_PREP','S8PIACVE',FALSE),	
('1999-200-152','UPI_DIE_PREP','S8PP8DVB',FALSE),	
('1999-200-153','UPI_DIE_PREP','S8PA7AVA',FALSE),	
('1999-200-154','UPI_DIE_PREP','S88ILTVE',FALSE),	
('1999-200-155','UPI_DIE_PREP','S8PA7AVA',FALSE),	
('1999-200-156','UPI_DIE_PREP','8PP5CVB',FALSE),	
('1999-200-157','UPI_DIE_PREP','S88ABGVAA',FALSE),	
('1999-200-158','UPI_DIE_PREP','S8PIARVDD',FALSE),	
('1999-200-159','UPI_DIE_PREP','S8PP8DVB',FALSE),	
('1999-200-160','UPI_DIE_PREP','S8PA7AVA',FALSE),	
('1999-200-161','UPI_DIE_PREP','S8PFUAVCR',FALSE),	
('1999-200-162','UPI_DIE_PREP','S8PP6AVAA',FALSE),	
('1999-200-163','UPI_DIE_PREP','8PNVCVB',FALSE),	
('1999-200-164','UPI_DIE_PREP','S88ABGVAA',FALSE),	
('1999-200-165','UPI_DIE_PREP','8PP5CVB',FALSE),	
('1999-200-166','UPI_DIE_PREP','S8PP6AVAA',FALSE),	
('1999-200-167','UPI_DIE_PREP','S8PFUAVCR',FALSE),	
('1999-200-168','UPI_DIE_PREP','8PP5CVB',FALSE),	
('1999-200-169','UPI_DIE_PREP','S8PIACVBD',FALSE),	
('1999-200-170','UPI_DIE_PREP','8PNVCVB',FALSE),	
('1999-200-171','UPI_DIE_PREP','8PNVCVB',FALSE),	
('1999-200-172','UPI_DIE_PREP','8PP5CVB',FALSE),	
('1999-200-173','UPI_DIE_PREP','S8PP8DVB',TRUE),	
('1999-200-174','UPI_DIE_PREP','S8PIACVE',TRUE),	
('1999-200-175','UPI_DIE_PREP','S8PCAFVC',TRUE),	
('1999-200-176','UPI_DIE_PREP','S8PIACVBD',TRUE),	
('1999-200-177','UPI_DIE_PREP','S8PIACVBD',TRUE),	
('1999-200-178','UPI_DIE_PREP','S8PIARVDD',TRUE),	
('1999-200-179','UPI_DIE_PREP','S8PCAFVC',TRUE),	
('1999-200-180','UPI_DIE_PREP','S8PP6AVAA',TRUE),	
('1999-200-181','UPI_DIE_PREP','F8PNLCVB',TRUE),	
('1999-200-182','UPI_DIE_PREP','B88AACVAB',TRUE),	
('1999-200-183','UPI_DIE_PREP','B88AACVAB',TRUE),	
('1999-200-184','UPI_DIE_PREP','S8PCAFVC',TRUE),	
('77A101','IC','S8PIACVE',FALSE),	
('77A102','IC','S88ABGVAA',FALSE),	
('77A103','IC','S8PIACVBD',FALSE),	
('77A104','IC','S8PIACVE',FALSE),	
('77A105','IC','S8PIACVE',FALSE),	
('77A106','IC','8PNVCVB',FALSE),	
('77A107','IC','S88ABGVAA',FALSE),	
('77A108','IC','S88ABGVAA',FALSE),	
('77A109','IC','8PP5CVB',FALSE),	
('77A110','IC','S8PCAFVC',FALSE),	
('77A111','IC','S88ILTVE',FALSE),	
('77A112','IC','S8PP6AVAA',FALSE),	
('77A113','IC','8PP5CVB',FALSE),	
('77A114','IC','S88ILTVE',FALSE),	
('77A115','IC','S8PFUAVCR',FALSE),	
('77A116','IC','S8PIACVBD',FALSE),	
('77A117','IC','S8PIACVBD',FALSE),	
('77A118','IC','S88ILTVE',FALSE),	
('77A119','IC','S8PIARVDD',FALSE),	
('77A120','IC','S8PP8DVB',FALSE),	
('77A121','IC','S88ILTVE',FALSE),	
('77A122','IC','S8PP8DVB',FALSE),	
('77A123','IC','S88ILTVE',FALSE),	
('77A124','IC','S8PIACVBD',FALSE),	
('77A125','IC','S8PP8DVB',FALSE),	
('77A126','IC','8PNVCVB',FALSE),	
('77A127','IC','S8PP8DVB',FALSE),	
('77A128','IC','S88ILTVE',FALSE),	
('77A129','IC','S8PFUAVCR',FALSE),	
('77A130','IC','S8PFUAVCR',FALSE),	
('77A131','IC','S88ABGVAA',FALSE),	
('77A132','IC','S8PFUAVCR',FALSE),	
('77A133','IC','S88ABGVAA',FALSE),	
('77A134','IC','S8PCAFVC',FALSE),	
('77A135','IC','S8PFUAVCR',FALSE),	
('77A136','IC','S8PIACVE',FALSE),	
('77A137','IC','S88ABGVAA',FALSE),	
('77A138','IC','S8PFUAVCR',FALSE),	
('77A139','IC','S8PFUAVCR',FALSE),	
('77A140','IC','S8PFUAVCR',FALSE),	
('77A141','IC','S8PIACVE',FALSE),	
('77A142','IC','S8PIACVE',FALSE),	
('77A143','IC','8PNVCVB',FALSE),	
('77A144','IC','S8PA7AVA',FALSE),	
('77A145','IC','S8PA7AVA',FALSE),	
('77A146','IC','S8PIACVBD',FALSE),	
('77A147','IC','S8PA7AVA',FALSE),	
('77A148','IC','S8PP6AVAA',FALSE),	
('77A149','IC','S8PA7AVA',FALSE),	
('77A150','IC','S88ABGVAA',FALSE),	
('77A151','IC','S8PP8DVB',FALSE),	
('77A152','IC','S8PA7AVA',FALSE),	
('77A153','IC','8PP5CVB',FALSE),	
('77A154','IC','S8PCAFVC',FALSE),	
('77A155','IC','S88ABGVAA',FALSE),	
('77A156','IC','S8PP8DVB',FALSE),	
('77A157','IC','S8PA7AVA',FALSE),	
('77A158','IC','S8PA7AVA',FALSE),	
('77A159','IC','S8PCAFVC',FALSE),	
('77A160','IC','S8PIARVDD',FALSE),	
('77A161','IC','F8PNLCVB',FALSE),	
('77A162','IC','S8PA7AVA',FALSE),	
('77A163','IC','8PP5CVB',FALSE),	
('77A164','IC','S8PIARVDD',FALSE),	
('77A165','IC','S8PP6AVAA',FALSE),	
('77A166','IC','8PP5CVB',FALSE),	
('77A167','IC','S8PIARVDD',TRUE),	
('77A168','IC','S88ILTVE',TRUE),	
('77A169','IC','S8PIARVDD',TRUE),	
('77A170','IC','S88ABGVAA',TRUE),	
('77A171','IC','S8PIACVBD',TRUE),	
('77A172','IC','S8PCAFVC',TRUE),	
('77A173','IC','S88ILTVE',TRUE),	
('77A174','IC','S8PCAFVC',TRUE),	
('77A175','IC','S8PIACVE',TRUE),	
('77A176','IC','S8PIACVBD',TRUE),	
('77A177','IC','B88AACVAB',TRUE),	
('77A178','IC','S8PFUAVCR',TRUE),	
('77A179','IC','B88AACVAB',TRUE),	
('77A180','IC','S8PIACVBD',TRUE),	
('77A181','IC','S8PP8DVB',TRUE),	
('77A182','IC','S8PA7AVA',TRUE),	
('77A183','IC','8PNVCVB',TRUE),	
('77A184','IC','S8PCAFVC',TRUE);
INSERT INTO Y_SIM_BOM.MASTER_DATA.LOCATION (ITEM_ID,ITEM_CLASS_NM,LOCATION_ID)
VALUES
('77A101','IC','C01'),
('77A102','IC','C02'),
('77A103','IC','C03'),
('77A104','IC','C04'),
('77A105','IC','C05'),
('77A106','IC','C06'),
('77A107','IC','C07'),
('77A108','IC','C08'),
('77A109','IC','C09'),
('77A110','IC','C10'),
('77A111','IC','C11'),
('77A112','IC','C12'),
('77A113','IC','C13'),
('77A114','IC','C14'),
('77A115','IC','C15'),
('77A116','IC','C16'),
('77A117','IC','C17'),
('77A118','IC','C18'),
('77A119','IC','C19'),
('77A120','IC','C20'),
('77A121','IC','C21'),
('77A122','IC','C22'),
('77A123','IC','C23'),
('77A124','IC','C24'),
('77A125','IC','C25'),
('77A126','IC','C26'),
('77A127','IC','C27'),
('77A128','IC','C28'),
('77A129','IC','C29'),
('77A130','IC','C30'),
('77A131','IC','C31'),
('77A132','IC','C32'),
('77A133','IC','C33'),
('77A134','IC','C34'),
('77A135','IC','C35'),
('77A136','IC','C36'),
('77A137','IC','C37'),
('77A138','IC','C38'),
('77A139','IC','C39'),
('77A140','IC','C40'),
('77A141','IC','C41'),
('77A142','IC','C42'),
('77A143','IC','C43'),
('77A144','IC','C44'),
('77A145','IC','C45'),
('77A146','IC','C46'),
('77A147','IC','C47'),
('77A148','IC','C48'),
('77A149','IC','C49'),
('77A150','IC','C50'),
('77A151','IC','C51'),
('77A152','IC','C52'),
('77A153','IC','C53'),
('77A154','IC','C54'),
('77A155','IC','C55'),
('77A156','IC','C56'),
('77A157','IC','C57'),
('77A158','IC','C58'),
('77A159','IC','C59'),
('77A160','IC','C60'),
('77A161','IC','C61'),
('77A162','IC','C62'),
('77A163','IC','C63'),
('77A164','IC','C64'),
('77A165','IC','C65'),
('77A166','IC','C66'),
('77A167','IC','C67'),
('77A168','IC','C68'),
('77A169','IC','C69'),
('77A170','IC','C70'),
('77A171','IC','C71'),
('77A172','IC','C72'),
('77A173','IC','C73'),
('77A174','IC','C74'),
('77A175','IC','C75'),
('77A176','IC','C76'),
('77A177','IC','C77'),
('77A178','IC','C78'),
('77A179','IC','C79'),
('77A180','IC','C80'),
('77A181','IC','C81'),
('77A182','IC','C82'),
('77A183','IC','C83'),
('77A184','IC','C84'),
('1999-200-101','UPI_DIE_PREP','B01'),
('1999-200-102','UPI_DIE_PREP','B02'),
('1999-200-103','UPI_DIE_PREP','B03'),
('1999-200-104','UPI_DIE_PREP','B04'),
('1999-200-105','UPI_DIE_PREP','B05'),
('1999-200-106','UPI_DIE_PREP','B06'),
('1999-200-107','UPI_DIE_PREP','B07'),
('1999-200-108','UPI_DIE_PREP','B08'),
('1999-200-109','UPI_DIE_PREP','B09'),
('1999-200-110','UPI_DIE_PREP','B10'),
('1999-200-111','UPI_DIE_PREP','B11'),
('1999-200-112','UPI_DIE_PREP','B12'),
('1999-200-113','UPI_DIE_PREP','B13'),
('1999-200-114','UPI_DIE_PREP','B14'),
('1999-200-115','UPI_DIE_PREP','B15'),
('1999-200-116','UPI_DIE_PREP','B16'),
('1999-200-117','UPI_DIE_PREP','B17'),
('1999-200-118','UPI_DIE_PREP','B18'),
('1999-200-119','UPI_DIE_PREP','B19'),
('1999-200-120','UPI_DIE_PREP','B20'),
('1999-200-121','UPI_DIE_PREP','B21'),
('1999-200-122','UPI_DIE_PREP','B22'),
('1999-200-123','UPI_DIE_PREP','B23'),
('1999-200-124','UPI_DIE_PREP','B24'),
('1999-200-125','UPI_DIE_PREP','B25'),
('1999-200-126','UPI_DIE_PREP','B26'),
('1999-200-127','UPI_DIE_PREP','B27'),
('1999-200-128','UPI_DIE_PREP','B28'),
('1999-200-129','UPI_DIE_PREP','B29'),
('1999-200-130','UPI_DIE_PREP','B30'),
('1999-200-131','UPI_DIE_PREP','B31'),
('1999-200-132','UPI_DIE_PREP','B32'),
('1999-200-133','UPI_DIE_PREP','B33'),
('1999-200-134','UPI_DIE_PREP','B34'),
('1999-200-135','UPI_DIE_PREP','B35'),
('1999-200-136','UPI_DIE_PREP','B36'),
('1999-200-137','UPI_DIE_PREP','B37'),
('1999-200-138','UPI_DIE_PREP','B38'),
('1999-200-139','UPI_DIE_PREP','B39'),
('1999-200-140','UPI_DIE_PREP','B40'),
('1999-200-141','UPI_DIE_PREP','B41'),
('1999-200-142','UPI_DIE_PREP','B42'),
('1999-200-143','UPI_DIE_PREP','B43'),
('1999-200-144','UPI_DIE_PREP','B44'),
('1999-200-145','UPI_DIE_PREP','B45'),
('1999-200-146','UPI_DIE_PREP','B46'),
('1999-200-147','UPI_DIE_PREP','B47'),
('1999-200-148','UPI_DIE_PREP','B48'),
('1999-200-149','UPI_DIE_PREP','B49'),
('1999-200-150','UPI_DIE_PREP','B50'),
('1999-200-151','UPI_DIE_PREP','B51'),
('1999-200-152','UPI_DIE_PREP','B52'),
('1999-200-153','UPI_DIE_PREP','B53'),
('1999-200-154','UPI_DIE_PREP','B54'),
('1999-200-155','UPI_DIE_PREP','B55'),
('1999-200-156','UPI_DIE_PREP','B56'),
('1999-200-157','UPI_DIE_PREP','B57'),
('1999-200-158','UPI_DIE_PREP','B58'),
('1999-200-159','UPI_DIE_PREP','B59'),
('1999-200-160','UPI_DIE_PREP','B60'),
('1999-200-161','UPI_DIE_PREP','B61'),
('1999-200-162','UPI_DIE_PREP','B62'),
('1999-200-163','UPI_DIE_PREP','B63'),
('1999-200-164','UPI_DIE_PREP','B64'),
('1999-200-165','UPI_DIE_PREP','B65'),
('1999-200-166','UPI_DIE_PREP','B66'),
('1999-200-167','UPI_DIE_PREP','B67'),
('1999-200-168','UPI_DIE_PREP','B68'),
('1999-200-169','UPI_DIE_PREP','B69'),
('1999-200-170','UPI_DIE_PREP','B70'),
('1999-200-171','UPI_DIE_PREP','B71'),
('1999-200-172','UPI_DIE_PREP','B72'),
('1999-200-173','UPI_DIE_PREP','B73'),
('1999-200-174','UPI_DIE_PREP','B74'),
('1999-200-175','UPI_DIE_PREP','B75'),
('1999-200-176','UPI_DIE_PREP','B76'),
('1999-200-177','UPI_DIE_PREP','B77'),
('1999-200-178','UPI_DIE_PREP','B78'),
('1999-200-179','UPI_DIE_PREP','B79'),
('1999-200-180','UPI_DIE_PREP','B80'),
('1999-200-181','UPI_DIE_PREP','B81'),
('1999-200-182','UPI_DIE_PREP','B82'),
('1999-200-183','UPI_DIE_PREP','B83'),
('1999-200-184','UPI_DIE_PREP','B84'),
('1999-100-101','UPI_SORT','A01'),
('1999-100-102','UPI_SORT','A02'),
('1999-100-103','UPI_SORT','A03'),
('1999-100-104','UPI_SORT','A04'),
('1999-100-105','UPI_SORT','A05'),
('1999-100-106','UPI_SORT','A06'),
('1999-100-107','UPI_SORT','A07'),
('1999-100-108','UPI_SORT','A08'),
('1999-100-109','UPI_SORT','A09'),
('1999-100-110','UPI_SORT','A10'),
('1999-100-111','UPI_SORT','A11'),
('1999-100-112','UPI_SORT','A12'),
('1999-100-113','UPI_SORT','A13'),
('1999-100-114','UPI_SORT','A14'),
('1999-100-115','UPI_SORT','A15'),
('1999-100-116','UPI_SORT','A16'),
('1999-100-117','UPI_SORT','A17'),
('1999-100-118','UPI_SORT','A18'),
('1999-100-119','UPI_SORT','A19'),
('1999-100-120','UPI_SORT','A20'),
('1999-100-121','UPI_SORT','A21'),
('1999-100-122','UPI_SORT','A22'),
('1999-100-123','UPI_SORT','A23'),
('1999-100-124','UPI_SORT','A24'),
('1999-100-125','UPI_SORT','A25'),
('1999-100-126','UPI_SORT','A26'),
('1999-100-127','UPI_SORT','A27'),
('1999-100-128','UPI_SORT','A28'),
('1999-100-129','UPI_SORT','A29'),
('1999-100-130','UPI_SORT','A30'),
('1999-100-131','UPI_SORT','A31'),
('1999-100-132','UPI_SORT','A32'),
('1999-100-133','UPI_SORT','A33'),
('1999-100-134','UPI_SORT','A34'),
('1999-100-135','UPI_SORT','A35'),
('1999-100-136','UPI_SORT','A36'),
('1999-100-137','UPI_SORT','A37'),
('1999-100-138','UPI_SORT','A38'),
('1999-100-139','UPI_SORT','A39'),
('1999-100-140','UPI_SORT','A40'),
('1999-100-141','UPI_SORT','A41'),
('1999-100-142','UPI_SORT','A42'),
('1999-100-143','UPI_SORT','A43'),
('1999-100-144','UPI_SORT','A44'),
('1999-100-145','UPI_SORT','A45'),
('1999-100-146','UPI_SORT','A46'),
('1999-100-147','UPI_SORT','A47'),
('1999-100-148','UPI_SORT','A48'),
('1999-100-149','UPI_SORT','A49'),
('1999-100-150','UPI_SORT','A50'),
('1999-100-151','UPI_SORT','A51'),
('1999-100-152','UPI_SORT','A52'),
('1999-100-153','UPI_SORT','A53'),
('1999-100-154','UPI_SORT','A54'),
('1999-100-155','UPI_SORT','A55'),
('1999-100-156','UPI_SORT','A56'),
('1999-100-157','UPI_SORT','A57'),
('1999-100-158','UPI_SORT','A58'),
('1999-100-159','UPI_SORT','A59'),
('1999-100-160','UPI_SORT','A60'),
('1999-100-161','UPI_SORT','A61'),
('1999-100-162','UPI_SORT','A62'),
('1999-100-163','UPI_SORT','A63'),
('1999-100-164','UPI_SORT','A64'),
('1999-100-165','UPI_SORT','A65'),
('1999-100-166','UPI_SORT','A66'),
('1999-100-167','UPI_SORT','A67'),
('1999-100-168','UPI_SORT','A68'),
('1999-100-169','UPI_SORT','A69'),
('1999-100-170','UPI_SORT','A70'),
('1999-100-171','UPI_SORT','A71'),
('1999-100-172','UPI_SORT','A72'),
('1999-100-173','UPI_SORT','A73'),
('1999-100-174','UPI_SORT','A74'),
('1999-100-175','UPI_SORT','A75'),
('1999-100-176','UPI_SORT','A76'),
('1999-100-177','UPI_SORT','A77'),
('1999-100-178','UPI_SORT','A78'),
('1999-100-179','UPI_SORT','A79'),
('1999-100-180','UPI_SORT','A80'),
('1999-100-181','UPI_SORT','A81'),
('1999-100-182','UPI_SORT','A82'),
('1999-100-183','UPI_SORT','A83'),
('1999-100-184','UPI_SORT','A84');
INSERT INTO Y_SIM_BOM.MASTER_DATA.ORIG_BOM (INPUT_ITEM_ID,ITEM_CLASS_NM,OUTPUT_ITEM_ID,LOC)
VALUES
('1999-100-101','UPI_SORT','1999-200-101','A01'),
('1999-100-102','UPI_SORT','1999-200-102','A02'),
('1999-100-103','UPI_SORT','1999-200-103','A03'),
('1999-100-104','UPI_SORT','1999-200-104','A04'),
('1999-100-105','UPI_SORT','1999-200-105','A05'),
('1999-100-106','UPI_SORT','1999-200-106','A06'),
('1999-100-107','UPI_SORT','1999-200-107','A07'),
('1999-100-108','UPI_SORT','1999-200-108','A08'),
('1999-100-109','UPI_SORT','1999-200-109','A09'),
('1999-100-110','UPI_SORT','1999-200-110','A10'),
('1999-100-111','UPI_SORT','1999-200-111','A11'),
('1999-100-112','UPI_SORT','1999-200-112','A12'),
('1999-100-113','UPI_SORT','1999-200-113','A13'),
('1999-100-114','UPI_SORT','1999-200-114','A14'),
('1999-100-115','UPI_SORT','1999-200-115','A15'),
('1999-100-116','UPI_SORT','1999-200-116','A16'),
('1999-100-117','UPI_SORT','1999-200-117','A17'),
('1999-100-118','UPI_SORT','1999-200-118','A18'),
('1999-100-119','UPI_SORT','1999-200-119','A19'),
('1999-100-120','UPI_SORT','1999-200-120','A20'),
('1999-100-121','UPI_SORT','1999-200-121','A21'),
('1999-100-122','UPI_SORT','1999-200-122','A22'),
('1999-100-123','UPI_SORT','1999-200-123','A23'),
('1999-100-124','UPI_SORT','1999-200-124','A24'),
('1999-100-125','UPI_SORT','1999-200-125','A25'),
('1999-100-126','UPI_SORT','1999-200-126','A26'),
('1999-100-127','UPI_SORT','1999-200-127','A27'),
('1999-100-128','UPI_SORT','1999-200-128','A28'),
('1999-100-129','UPI_SORT','1999-200-129','A29'),
('1999-100-130','UPI_SORT','1999-200-130','A30'),
('1999-100-131','UPI_SORT','1999-200-131','A31'),
('1999-100-132','UPI_SORT','1999-200-132','A32'),
('1999-100-133','UPI_SORT','1999-200-133','A33'),
('1999-100-134','UPI_SORT','1999-200-134','A34'),
('1999-100-135','UPI_SORT','1999-200-135','A35'),
('1999-100-136','UPI_SORT','1999-200-136','A36'),
('1999-100-137','UPI_SORT','1999-200-137','A37'),
('1999-100-138','UPI_SORT','1999-200-138','A38'),
('1999-100-139','UPI_SORT','1999-200-139','A39'),
('1999-100-140','UPI_SORT','1999-200-140','A40'),
('1999-100-141','UPI_SORT','1999-200-141','A41'),
('1999-100-142','UPI_SORT','1999-200-142','A42'),
('1999-100-143','UPI_SORT','1999-200-143','A43'),
('1999-100-144','UPI_SORT','1999-200-144','A44'),
('1999-100-145','UPI_SORT','1999-200-145','A45'),
('1999-100-146','UPI_SORT','1999-200-146','A46'),
('1999-100-147','UPI_SORT','1999-200-147','A47'),
('1999-100-148','UPI_SORT','1999-200-148','A48'),
('1999-100-149','UPI_SORT','1999-200-149','A49'),
('1999-100-150','UPI_SORT','1999-200-150','A50'),
('1999-100-151','UPI_SORT','1999-200-151','A51'),
('1999-100-152','UPI_SORT','1999-200-152','A52'),
('1999-100-153','UPI_SORT','1999-200-153','A53'),
('1999-100-154','UPI_SORT','1999-200-154','A54'),
('1999-100-155','UPI_SORT','1999-200-155','A55'),
('1999-100-156','UPI_SORT','1999-200-156','A56'),
('1999-100-157','UPI_SORT','1999-200-157','A57'),
('1999-100-158','UPI_SORT','1999-200-158','A58'),
('1999-100-159','UPI_SORT','1999-200-159','A59'),
('1999-100-160','UPI_SORT','1999-200-160','A60'),
('1999-100-161','UPI_SORT','1999-200-161','A61'),
('1999-100-162','UPI_SORT','1999-200-162','A62'),
('1999-100-163','UPI_SORT','1999-200-163','A63'),
('1999-100-164','UPI_SORT','1999-200-164','A64'),
('1999-100-165','UPI_SORT','1999-200-165','A65'),
('1999-100-166','UPI_SORT','1999-200-166','A66'),
('1999-100-167','UPI_SORT','1999-200-167','A67'),
('1999-100-168','UPI_SORT','1999-200-168','A68'),
('1999-100-169','UPI_SORT','1999-200-169','A69'),
('1999-100-170','UPI_SORT','1999-200-170','A70'),
('1999-100-171','UPI_SORT','1999-200-171','A71'),
('1999-100-172','UPI_SORT','1999-200-172','A72'),
('1999-100-173','UPI_SORT','1999-200-173','A73'),
('1999-100-174','UPI_SORT','1999-200-174','A74'),
('1999-100-175','UPI_SORT','1999-200-175','A75'),
('1999-100-176','UPI_SORT','1999-200-176','A76'),
('1999-100-177','UPI_SORT','1999-200-177','A77'),
('1999-100-178','UPI_SORT','1999-200-178','A78'),
('1999-100-179','UPI_SORT','1999-200-179','A79'),
('1999-100-180','UPI_SORT','1999-200-180','A80'),
('1999-100-181','UPI_SORT','1999-200-181','A81'),
('1999-100-182','UPI_SORT','1999-200-182','A82'),
('1999-100-183','UPI_SORT','1999-200-183','A83'),
('1999-100-184','UPI_SORT','1999-200-184','A84'),
('1999-200-101','UPI_DIE_PREP','77A101','B01'),
('1999-200-102','UPI_DIE_PREP','77A102','B02'),
('1999-200-103','UPI_DIE_PREP','77A103','B03'),
('1999-200-104','UPI_DIE_PREP','77A104','B04'),
('1999-200-105','UPI_DIE_PREP','77A105','B05'),
('1999-200-106','UPI_DIE_PREP','77A106','B06'),
('1999-200-107','UPI_DIE_PREP','77A107','B07'),
('1999-200-108','UPI_DIE_PREP','77A108','B08'),
('1999-200-109','UPI_DIE_PREP','77A109','B09'),
('1999-200-110','UPI_DIE_PREP','77A110','B10'),
('1999-200-111','UPI_DIE_PREP','77A111','B11'),
('1999-200-112','UPI_DIE_PREP','77A112','B12'),
('1999-200-113','UPI_DIE_PREP','77A113','B13'),
('1999-200-114','UPI_DIE_PREP','77A114','B14'),
('1999-200-115','UPI_DIE_PREP','77A115','B15'),
('1999-200-116','UPI_DIE_PREP','77A116','B16'),
('1999-200-117','UPI_DIE_PREP','77A117','B17'),
('1999-200-118','UPI_DIE_PREP','77A118','B18'),
('1999-200-119','UPI_DIE_PREP','77A119','B19'),
('1999-200-120','UPI_DIE_PREP','77A120','B20'),
('1999-200-121','UPI_DIE_PREP','77A121','B21'),
('1999-200-122','UPI_DIE_PREP','77A122','B22'),
('1999-200-123','UPI_DIE_PREP','77A123','B23'),
('1999-200-124','UPI_DIE_PREP','77A124','B24'),
('1999-200-125','UPI_DIE_PREP','77A125','B25'),
('1999-200-126','UPI_DIE_PREP','77A126','B26'),
('1999-200-127','UPI_DIE_PREP','77A127','B27'),
('1999-200-128','UPI_DIE_PREP','77A128','B28'),
('1999-200-129','UPI_DIE_PREP','77A129','B29'),
('1999-200-130','UPI_DIE_PREP','77A130','B30'),
('1999-200-131','UPI_DIE_PREP','77A131','B31'),
('1999-200-132','UPI_DIE_PREP','77A132','B32'),
('1999-200-133','UPI_DIE_PREP','77A133','B33'),
('1999-200-134','UPI_DIE_PREP','77A134','B34'),
('1999-200-135','UPI_DIE_PREP','77A135','B35'),
('1999-200-136','UPI_DIE_PREP','77A136','B36'),
('1999-200-137','UPI_DIE_PREP','77A137','B37'),
('1999-200-138','UPI_DIE_PREP','77A138','B38'),
('1999-200-139','UPI_DIE_PREP','77A139','B39'),
('1999-200-140','UPI_DIE_PREP','77A140','B40'),
('1999-200-141','UPI_DIE_PREP','77A141','B41'),
('1999-200-142','UPI_DIE_PREP','77A142','B42'),
('1999-200-143','UPI_DIE_PREP','77A143','B43'),
('1999-200-144','UPI_DIE_PREP','77A144','B44'),
('1999-200-145','UPI_DIE_PREP','77A145','B45'),
('1999-200-146','UPI_DIE_PREP','77A146','B46'),
('1999-200-147','UPI_DIE_PREP','77A147','B47'),
('1999-200-148','UPI_DIE_PREP','77A148','B48'),
('1999-200-149','UPI_DIE_PREP','77A149','B49'),
('1999-200-150','UPI_DIE_PREP','77A150','B50'),
('1999-200-151','UPI_DIE_PREP','77A151','B51'),
('1999-200-152','UPI_DIE_PREP','77A152','B52'),
('1999-200-153','UPI_DIE_PREP','77A153','B53'),
('1999-200-154','UPI_DIE_PREP','77A154','B54'),
('1999-200-155','UPI_DIE_PREP','77A155','B55'),
('1999-200-156','UPI_DIE_PREP','77A156','B56'),
('1999-200-157','UPI_DIE_PREP','77A157','B57'),
('1999-200-158','UPI_DIE_PREP','77A158','B58'),
('1999-200-159','UPI_DIE_PREP','77A159','B59'),
('1999-200-160','UPI_DIE_PREP','77A160','B60'),
('1999-200-161','UPI_DIE_PREP','77A161','B61'),
('1999-200-162','UPI_DIE_PREP','77A162','B62'),
('1999-200-163','UPI_DIE_PREP','77A163','B63'),
('1999-200-164','UPI_DIE_PREP','77A164','B64'),
('1999-200-165','UPI_DIE_PREP','77A165','B65'),
('1999-200-166','UPI_DIE_PREP','77A166','B66'),
('1999-200-167','UPI_DIE_PREP','77A167','B67'),
('1999-200-168','UPI_DIE_PREP','77A168','B68'),
('1999-200-169','UPI_DIE_PREP','77A169','B69'),
('1999-200-170','UPI_DIE_PREP','77A170','B70'),
('1999-200-171','UPI_DIE_PREP','77A171','B71'),
('1999-200-172','UPI_DIE_PREP','77A172','B72');
