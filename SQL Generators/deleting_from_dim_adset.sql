DELETE dim_adset
FROM dim_adset
JOIN temp t ON dim_adset.ad_id = t.ad_id AND dim_adset.ad_name = t.ad_name;
