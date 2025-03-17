-- 📌 Exercise: Group by email domain
-- 🔹 Instructions: Modify this query to show how many users exist per email domain.
SELECT email, COUNT(*) FROM users GROUP BY email;
