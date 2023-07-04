CREATE TABLE if not exists fact_table
(
		aId INT,
		Aname varchar(255),
		account_id BIGINT,
		campaign_id BIGINT,
		campaign_name VARCHAR(255),
		time_spent INT,
		views INT,
		freq DECIMAL(10,2),
		obj VARCHAR(255),
		platform VARCHAR(255)
);


SET SQL_SAFE_UPDATES = 0;
DELETE fact_table
from temp_fact
-- FROM stage_table
-- JOIN fact_table ON stage_table.account_id =fact_table.accountid AND stage_table.date_start = fact_table.fdate;
JOIN fact_table ON temp_fact.account_id =fact_table.account_id AND temp_fact.aId = fact_table.aId;

SELECT * FROM fact_table;


INSERT INTO fact_table (aId, Aname, account_id, campaign_id, campaign_name, time_spent, views, freq, obj, platform)
SELECT DISTINCT aId, Aname, account_id, campaign_id, campaign_name, time_spent, views, freq, obj, platform
from temp_fact;