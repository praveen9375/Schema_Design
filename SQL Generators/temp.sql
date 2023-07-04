CREATE TABLE temp AS
SELECT ad_id, ad_name, SUBSTRING_INDEX(MAX(CONCAT(t.start_date, '|', t.acc_name)), '|', -1) AS Naam
FROM temp_stage t
GROUP BY ad_id, ad_name;

select * from temp_stage;