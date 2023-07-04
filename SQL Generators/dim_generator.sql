DROP TABLE IF EXISTS temp_dim_camp;
CREATE TABLE IF NOT EXISTS temp_dim_camp (
 Cid INT,
Client_id INT,
Date_started DATE 
);

INSERT INTO temp_dim_camp (Cid, Client_id, Date_started)
SELECT DISTINCT t.camp_id, t.acc_id, t.start_date
FROM temp_stage t
LEFT JOIN temp_dim_camp d ON d.Cid = t.camp_id and d.Client_id = t.acc_id
WHERE d.Cid IS NULL;

select * from temp_dim_camp;