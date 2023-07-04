drop table if exists temp_stage;
CREATE TABLE temp_stage AS
SELECT DISTINCT
  CAST(adset_id AS SIGNED) AS ad_id,
  CAST(adset_name AS CHAR(50)) AS ad_name,
  CAST(account_id AS SIGNED) AS acc_id,
  CAST(account_name AS CHAR(50)) AS acc_name,
  CAST(campaign_id AS SIGNED) AS camp_id,
  CAST(campaign_name AS CHAR(50)) AS camp_name,
  CAST(spend AS SIGNED) AS time_spent,
  CAST(impressions AS SIGNED) AS views,
  CAST(frequency AS DECIMAL(10, 2)) AS freq,
  CAST(objective AS CHAR(50)) AS obj,
  CAST(platform AS CHAR(50)) AS platform
FROM imported_data;

select * from temp_stage;