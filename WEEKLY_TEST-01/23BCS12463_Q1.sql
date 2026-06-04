SELECT
    7 AS month,
    COUNT(DISTINCT u1.user_id) AS monthly_active_users
FROM user_actions u1
JOIN user_actions u2
    ON u1.user_id = u2.user_id
WHERE EXTRACT(MONTH FROM u1.event_date) = 6
  AND EXTRACT(MONTH FROM u2.event_date) = 7;