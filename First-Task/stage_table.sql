create table if not exists stage_table
(
   `name` VARCHAR(50),
   symbol VARCHAR(50),
   slug VARCHAR(50),
   is_active INT,
   `rank` INT
) AS
Select `name`,symbol,slug,is_active,`rank` from coins_data_1;

ALTER TABLE stage_table
ADD p_id INT,
ADD s_id INT,
ADD id INT;

Alter Table stage_table
ADD index idx_s_id(s_id),
ADD index idx_p_id(p_id),
ADD index idx_id(id);

select * from stage_table;