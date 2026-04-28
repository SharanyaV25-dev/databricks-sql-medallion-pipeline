CREATE OR REPLACE TABLE gold_user_summary AS
SELECT
    user_id,
    
    AVG(daily_screen_time_hours) AS avg_daily_usage,
    AVG(social_media_hours) AS avg_social_media,
    AVG(gaming_hours) AS avg_gaming,
    
    SUM(app_opens_per_day) AS total_app_opens,
    SUM(notifications_per_day) AS total_notifications
    
FROM silver_data
GROUP BY user_id;
