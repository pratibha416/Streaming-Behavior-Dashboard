-- Query to get total watch time (in minutes) per user
-- Input: watch_history table with video_duration
SELECT 
user_id, video_genre, 
SUM(video_duration) AS total_minutes
FROM watch_history
GROUP BY user_id, video_genre;