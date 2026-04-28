CREATE OR REPLACE TABLE silver_data AS
SELECT DISTINCT
    transaction_id,
    user_id,
    age,
    -- Standardize categorical values
    INITCAP(gender) AS gender,
    daily_screen_time_hours,
    social_media_hours,
    gaming_hours,
    work_study_hours,
    sleep_hours,
    weekend_screen_time,
    notifications_per_day,
    app_opens_per_day,
    
    INITCAP(stress_level) AS stress_level,
    INITCAP(academic_work_impact) AS academic_work_impact,
    
    COALESCE(addiction_level, 'Unknown') AS addiction_level,
    
    addicted_label,
    ingestion_time

FROM bronze_data
WHERE user_id IS NOT NULL;