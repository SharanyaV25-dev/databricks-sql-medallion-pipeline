CREATE OR REPLACE TABLE gold_addiction_analysis AS
SELECT
    addiction_level,
    COUNT(*) AS user_count,
    AVG(daily_screen_time_hours) AS avg_screen_time,
    AVG(social_media_hours) AS avg_social_usage
FROM silver_data
GROUP BY addiction_level;
