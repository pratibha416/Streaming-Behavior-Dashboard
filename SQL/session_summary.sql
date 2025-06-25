-- Query to identify binge-watching sessions (≥3 videos in a single session)
-- Input: watch_history table with user_id, watch_time
WITH watch_ordered AS (
  SELECT *, LAG(watch_time) OVER (PARTITION BY user_id ORDER BY watch_time) AS prev_watch_time
  FROM watch_history
),
session_flags AS (
  SELECT *,
    CASE
      WHEN TIMESTAMPDIFF(MINUTE, prev_watch_time, watch_time) > 30 OR prev_watch_time IS NULL THEN 1
      ELSE 0
    END AS is_new_session
  FROM watch_ordered
),
sessions AS (
  SELECT *,
    SUM(is_new_session) OVER (PARTITION BY user_id ORDER BY watch_time) AS session_id
  FROM session_flags
),
session_summary AS (
  SELECT
    user_id,
    session_id,
    COUNT(*) AS videos_watched,
    MIN(watch_time) AS session_start,
    MAX(watch_time) AS session_end
  FROM sessions
  GROUP BY user_id, session_id
)
--  Output: Binge-watching sessions only
SELECT *
FROM session_summary
WHERE videos_watched >= 3
ORDER BY user_id;
