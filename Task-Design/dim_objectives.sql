CREATE TABLE IF NOT EXISTS dim_objectives
(
obj_id INT PRIMARY KEY AUTO_INCREMENT,
obj VARCHAR(50)
);

INSERT INTO dim_objectives (obj)
SELECT DISTINCT t.obj
FROM temp_stage t
LEFT JOIN dim_objectives d ON d.obj = t.obj
WHERE d.obj_id IS NULL;

select * from dim_objectives;