WITH posts AS (
    SELECT DISTINCT sub_id AS post_id
    FROM Submission
    WHERE parent_id IS NULL
),
comments AS (
    SELECT DISTINCT sub_id, parent_id
    FROM Submission
    WHERE parent_id IS NOT NULL
)
SELECT
    p.post_id,
    COUNT(c.sub_id) AS number_of_comments
FROM posts p
LEFT JOIN comments c
    ON p.post_id = c.parent_id
GROUP BY p.post_id
ORDER BY p.post_id;