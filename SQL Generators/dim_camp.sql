CREATE TABLE IF NOT EXISTS dim_campaign
(
gen_id INT PRIMARY KEY AUTO_INCREMENT,
camp_id INT,
acc_id INT,
start_date DATE
);

SET SQL_SAFE_UPDATES = 0;
DELETE dim_campaign
from temp_dim_camp
JOIN dim_campaign ON temp_dim_camp.Client_id =dim_campaign.acc_id AND temp_dim_camp.Cid = dim_campaign.camp_id;

INSERT INTO dim_campaign (camp_id, acc_id, start_date)
SELECT DISTINCT Cid, Client_id, Date_started
from temp_dim_camp;

Select * from dim_campaign;