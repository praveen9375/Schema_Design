CREATE TABLE IF NOT EXISTS dim_adset_generator
(
akey INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ad_id  INT,
  ad_name VARCHAR(250)
);

SELECT * FROM dim_adset_generator;