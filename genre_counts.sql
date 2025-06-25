-- 🔍 Query to get most-watched genres per user
-- Input: watch_history table
WITH genre_counts AS (
  SELECT
    user_id,
    video_genre,
    COUNT(*) AS watch_count
  FROM watch_history
  GROUP BY user_id, video_genre