CREATE OR REPLACE TABLE bronze_data AS
SELECT *,
       current_timestamp() AS ingestion_time
FROM `workspace`.`default`.`smartphone_usage_and_addiction_data`;
