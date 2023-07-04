SELECT time_spent as spendfact
FROM fact_table
WHERE account_id = 12345 AND campaign_name = 'CAMPAIGN_ABCD';


-- agg-by-date concepts
SELECT SUM(time_spent) AS total_spend
FROM fact_table
WHERE account_id = 12345 AND campaign_name = 'CAMPAIGN_ABCD' AND aId = 6079 
GROUP BY account_id,campaign_name,aId;
