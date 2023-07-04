insert into dim_adset_generator (ad_id, ad_name)
select t.ad_id, t.ad_name 
from temp t
left join dim_adset_generator dag
on t.ad_id = dag.ad_id and t.ad_name = dag.ad_name
where dag.ad_id is null;