DROP TABLE IF EXISTS temp_dim_camp;
CREATE TABLE IF NOT EXISTS temp_dim_camp (
  Cid INT,
  Client_id INT,
  Date_started DATE,
  Naam VARCHAR(255)
);

INSERT INTO temp_dim_camp (Cid, Client_id, Date_started, Naam)
SELECT
  t.camp_id,
  t.acc_id,	
  DATE_FORMAT(t.start_date, '%Y-%m-%d') AS Date_started,
  SUBSTRING_INDEX(MAX(CONCAT(t.start_date, '||', t.acc_name)), '||', -1) AS Naam
FROM
  temp_stage t
LEFT JOIN
  temp_dim_camp d ON d.Cid = t.camp_id AND d.Client_id = t.acc_id
WHERE
  d.Cid IS NULL
GROUP BY
  t.camp_id, t.acc_id, t.start_date, t.acc_name;
  
select * from temp_dim_camp;