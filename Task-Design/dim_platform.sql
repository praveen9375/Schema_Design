CREATE TABLE IF NOT EXISTS dim_platform
(
platfrom_id INT PRIMARY KEY AUTO_INCREMENT,
platform VARCHAR(50)
);

INSERT INTO dim_platform (platform)
SELECT DISTINCT t.platform
FROM temp_stage t
LEFT JOIN dim_platform d ON d.platform = t.platform
WHERE d.platfrom_id IS NULL;

select * from dim_platform;