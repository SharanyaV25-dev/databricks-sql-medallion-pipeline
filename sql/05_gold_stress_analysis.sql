CREATE OR REPLACE TABLE gold_stress_analysis AS
SELECT
    stress_level,
    AVG(daily_screen_time_hours) AS avg_screen_time,
    AVG(sleep_hours) AS avg_sleep
FROM silver_data
GROUP BY stress_level;