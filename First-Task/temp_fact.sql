CREATE TABLE IF NOT EXISTS temp_ft (
  s_id INT,
  p_id INT,
  id INT,
  a_id INT AUTO_INCREMENT PRIMARY KEY,
  FOREIGN KEY (s_id) REFERENCES stage_table(s_id),
  FOREIGN KEY (p_id) REFERENCES stage_table(p_id),
  FOREIGN KEY (id) REFERENCES stage_table(id)
);


INSERT INTO temp_ft (id, p_id, s_id)
SELECT tsg.s_id, dp.p_id, dst.id
FROM stage_table tsg
LEFT JOIN dim_symbol ds ON tsg.s_id = ds.s_id
LEFT JOIN dim_position dp ON tsg.p_id = dp.p_id
LEFT JOIN dim_status dst ON tsg.id = dst.id
WHERE tsg.s_id IS NULL
  AND tsg.p_id IS NULL
  AND tsg.id IS NULL;

select * from temp_ft; 

