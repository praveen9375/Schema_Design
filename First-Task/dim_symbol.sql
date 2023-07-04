create table if not exists dim_symbol
(
  s_id integer auto_increment primary key,
  symbol varchar(255)
);

INSERT INTO dim_symbol (symbol)
SELECT denoting_sign FROM temp_stage;

select * from dim_symbol;