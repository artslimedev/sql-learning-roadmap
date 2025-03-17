-- 📌 Exercise: Join users with recipes
-- 🔹 Instructions: Modify this query to also display the user's email.
SELECT users.name, recipes.title FROM users
JOIN recipes ON users.id = recipes.user_id;
