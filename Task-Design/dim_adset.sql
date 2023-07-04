CREATE TABLE IF NOT EXISTS dim_adset
(
count_ad INT PRIMARY KEY AUTO_INCREMENT,
ad_id INT,
ad_name VARCHAR(50)
); 

INSERT INTO dim_adset (ad_id, ad_name)
SELECT DISTINCT t.ad_id, t.ad_name
FROM temp_stage t
LEFT JOIN dim_adset d ON d.ad_id = t.ad_id
WHERE d.ad_id IS NULL;

select * from dim_adset;