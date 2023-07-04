insert into dim_adset (akey, ad_id, ad_name, naam)
select dag.akey, t.ad_id, t.ad_name, t.naam
from temp t
inner join dim_adset_generator dag
on t.ad_id = dag.ad_id
 and t.ad_name = dag.ad_name