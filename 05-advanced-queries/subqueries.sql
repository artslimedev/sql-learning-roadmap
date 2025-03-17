-- 📌 Exercise: Write a subquery
-- 🔹 Instructions: Modify this query to fetch users who have at least one recipe.
SELECT * FROM users WHERE id IN (SELECT user_id FROM recipes);
