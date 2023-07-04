create table if not exists dim_position
(
  p_id integer auto_increment primary key,
  position_in_world varchar(255)
);

INSERT INTO dim_position (position_in_world)
SELECT status FROM temp_stage;

select * from dim_position;