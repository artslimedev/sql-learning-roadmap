-- 📌 Exercise: Design a Recipe Manager Database
-- 🔹 Instructions: Modify this script to include an 'ingredients' table linked to recipes.
CREATE TABLE recipe_categories (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);
