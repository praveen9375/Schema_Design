DROP TABLE IF EXISTS temp_stage;
create table temp_stage as
select distinct cast(`name` as char) as naam, cast(symbol as char) as denoting_sign, cast(`rank` as decimal) as position,
cast(is_active as decimal) as status
from stage_table;

select * from temp_stage;