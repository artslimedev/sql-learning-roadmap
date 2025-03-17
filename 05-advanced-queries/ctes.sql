-- 📌 Exercise: Use Common Table Expressions (CTEs)
-- 🔹 Instructions: Modify this query to select only users who have more than 1 recipe.
WITH RecipeCounts AS (
    SELECT user_id, COUNT(*) as recipe_count FROM recipes GROUP BY user_id
)
SELECT * FROM users u
JOIN RecipeCounts r ON u.id = r.user_id;
