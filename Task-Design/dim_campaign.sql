CREATE TABLE IF NOT EXISTS dim_campaign
(
count_camp INT PRIMARY KEY AUTO_INCREMENT,
camp_id INT,
camp_name VARCHAR(50)
);

INSERT INTO dim_campaign (camp_id, camp_name)
SELECT DISTINCT t.camp_id, t.camp_name
FROM temp_stage t
LEFT JOIN dim_campaign d ON d.camp_id = t.camp_id
WHERE d.camp_id IS NULL;

select * from dim_campaign;