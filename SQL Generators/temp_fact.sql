DROP TABLE IF EXISTS temp_fact;
CREATE TABLE temp_fact AS
SELECT
    s.ad_id as aId,
    s.ad_name as Aname,
    s.acc_id AS account_id,
    s.acc_name AS acc_name,
    s.camp_id AS campaign_id,
    s.camp_name AS campaign_name,
    s.obj,
    s.time_spent,
    s.views,
    s.freq,
    s.obj as objectives,
    s.platform,
    s.start_date as first_day
FROM
    temp_stage s
LEFT JOIN
    dim_campaign c ON s.camp_id = c.camp_id
LEFT JOIN
    dim_adset a ON s.ad_id = a.ad_id
LEFT JOIN
    dim_platform p ON s.platform = p.platform
LEFT JOIN
    dim_objectives o ON s.obj = o.obj_id;

select * from temp_fact