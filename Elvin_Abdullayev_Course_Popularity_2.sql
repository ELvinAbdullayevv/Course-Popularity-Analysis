WITH TotalVotes AS (
    -- Calculate total votes for each survey
    SELECT 
        survey_id, 
        (votes_a + votes_b) AS total_survey_votes
    FROM survey
)
SELECT 
    c.course_name, 
    c.faculty,
    COALESCE(SUM(
        CASE 
            -- If vote difference is >5%, winner gets 1 point, loser gets 0
            WHEN ABS(s.votes_a - s.votes_b) > (0.05 * tv.total_survey_votes) 
                THEN CASE 
                    WHEN s.votes_a > s.votes_b AND c.course_name = s.option_a THEN 1
                    WHEN s.votes_b > s.votes_a AND c.course_name = s.option_b THEN 1
                    ELSE 0
                END
            -- If vote difference is ≤5%, both courses get 0.5 points
            ELSE 0.5
        END
    ), 0) AS course_popularity
FROM course c
LEFT JOIN survey s 
    ON c.course_name = s.option_a OR c.course_name = s.option_b
LEFT JOIN TotalVotes tv 
    ON s.survey_id = tv.survey_id
GROUP BY c.course_name, c.faculty
ORDER BY course_popularity DESC;
