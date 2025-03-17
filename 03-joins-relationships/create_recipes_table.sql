-- 📌 Exercise: Create a recipes table
-- 🔹 Instructions: Modify this script to add a 'description' column to the table.
CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id) ON DELETE CASCADE,
    title TEXT NOT NULL
);
