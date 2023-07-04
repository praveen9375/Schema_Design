select * from imported_data

CREATE TABLE IF NOT EXISTS stage (
  ad_id INT,
  ad_name VARCHAR(50),
  acc_id INT,
  acc_name VARCHAR(50),
  camp_id INT,
  camp_name VARCHAR(50),
  time_spent INT,
  views INT,
  freq DECIMAL,
  obj VARCHAR(50),
  platform VARCHAR(50)
);
INSERT INTO stage (ad_id, ad_name, acc_id, acc_name, camp_id, camp_name, time_spent, views, freq, obj, platform)
SELECT
  adset_id,
  adset_name,
  account_id,
  account_name,
  campaign_id,
  campaign_name,
  spend,
  impressions,
  frequency,
  objective,
  platform
FROM imported_data;

select * from stage
