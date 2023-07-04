create table if not exists dim_status
(
  id integer auto_increment primary key,
  is_active varchar(255)
);

INSERT INTO dim_status (is_active)
SELECT status FROM temp_stage;

select * from dim_status;