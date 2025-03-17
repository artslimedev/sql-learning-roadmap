-- 📌 Exercise: Create a users table
-- 🔹 Instructions: Modify this script to add an 'age' column and run it.
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);
