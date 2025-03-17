#!/bin/bash

# Define base directory
BASE_DIR="sql-learning-roadmap"

# Create directory structure
mkdir -p $BASE_DIR/{01-setup-basics,02-querying-filtering,03-joins-relationships,04-aggregations-grouping,05-advanced-queries,06-transactions-security,07-final-project}

# Function to write SQL files
write_sql_file() {
    echo -e "$2" > "$BASE_DIR/$1/$3.sql"
}

# 🟢 01-Setup Basics
write_sql_file "01-setup-basics" "-- 📌 Exercise: Create a new database\n-- 🔹 Instructions: Modify this script to create a database with a different name and run it in PostgreSQL.\nCREATE DATABASE recipes_db;" "create_database"

write_sql_file "01-setup-basics" "-- 📌 Exercise: Create a users table\n-- 🔹 Instructions: Modify this script to add an 'age' column and run it.\nCREATE TABLE users (\n    id SERIAL PRIMARY KEY,\n    name TEXT NOT NULL,\n    email TEXT UNIQUE NOT NULL\n);" "create_users_table"

write_sql_file "01-setup-basics" "-- 📌 Exercise: Insert sample data\n-- 🔹 Instructions: Add at least 2 more users with unique emails and run this script.\nINSERT INTO users (name, email) VALUES\n('Alice', 'alice@gmail.com'),\n('Bob', 'bob@yahoo.com'),\n('Charlie', 'charlie@outlook.com');" "insert_users"

write_sql_file "01-setup-basics" "-- 📌 Exercise: Retrieve all users\n-- 🔹 Instructions: Modify this query to retrieve only users whose names start with 'A'.\nSELECT * FROM users;" "select_users"

# 🟢 02-Querying & Filtering
write_sql_file "02-querying-filtering" "-- 📌 Exercise: Filter users by email domain\n-- 🔹 Instructions: Modify this query to filter users whose email ends with 'yahoo.com'.\nSELECT * FROM users WHERE email LIKE '%gmail.com';" "where_clause"

write_sql_file "02-querying-filtering" "-- 📌 Exercise: Sort users\n-- 🔹 Instructions: Modify this query to sort users in descending order.\nSELECT * FROM users ORDER BY name ASC;" "order_by"

write_sql_file "02-querying-filtering" "-- 📌 Exercise: Pagination\n-- 🔹 Instructions: Modify this query to fetch only the first 3 users.\nSELECT * FROM users LIMIT 5 OFFSET 10;" "limit_offset"

# 🟢 03-Joins & Relationships
write_sql_file "03-joins-relationships" "-- 📌 Exercise: Create a recipes table\n-- 🔹 Instructions: Modify this script to add a 'description' column to the table.\nCREATE TABLE recipes (\n    id SERIAL PRIMARY KEY,\n    user_id INT REFERENCES users(id) ON DELETE CASCADE,\n    title TEXT NOT NULL\n);" "create_recipes_table"

write_sql_file "03-joins-relationships" "-- 📌 Exercise: Insert sample recipes\n-- 🔹 Instructions: Add 2 more recipes for different users and run this script.\nINSERT INTO recipes (user_id, title) VALUES\n(1, 'Spaghetti Bolognese'),\n(2, 'Grilled Chicken'),\n(3, 'Tacos');" "insert_recipes"

write_sql_file "03-joins-relationships" "-- 📌 Exercise: Join users with recipes\n-- 🔹 Instructions: Modify this query to also display the user's email.\nSELECT users.name, recipes.title FROM users\nJOIN recipes ON users.id = recipes.user_id;" "join_queries"

# 🟢 04-Aggregations & Grouping
write_sql_file "04-aggregations-grouping" "-- 📌 Exercise: Count users\n-- 🔹 Instructions: Modify this query to count how many users have an email ending in 'gmail.com'.\nSELECT COUNT(*) FROM users;" "count_sum_avg"

write_sql_file "04-aggregations-grouping" "-- 📌 Exercise: Group by email domain\n-- 🔹 Instructions: Modify this query to show how many users exist per email domain.\nSELECT email, COUNT(*) FROM users GROUP BY email;" "group_by_having"

# 🟢 05-Advanced Queries
write_sql_file "05-advanced-queries" "-- 📌 Exercise: Write a subquery\n-- 🔹 Instructions: Modify this query to fetch users who have at least one recipe.\nSELECT * FROM users WHERE id IN (SELECT user_id FROM recipes);" "subqueries"

write_sql_file "05-advanced-queries" "-- 📌 Exercise: Use Common Table Expressions (CTEs)\n-- 🔹 Instructions: Modify this query to select only users who have more than 1 recipe.\nWITH RecipeCounts AS (\n    SELECT user_id, COUNT(*) as recipe_count FROM recipes GROUP BY user_id\n)\nSELECT * FROM users u\nJOIN RecipeCounts r ON u.id = r.user_id;" "ctes"

write_sql_file "05-advanced-queries" "-- 📌 Exercise: Indexing\n-- 🔹 Instructions: Modify this query to create an index on the 'email' column.\nCREATE INDEX idx_users_email ON users(email);" "indexing"

# 🟢 06-Transactions & Security
write_sql_file "06-transactions-security" "-- 📌 Exercise: Transactions\n-- 🔹 Instructions: Modify this script to insert a user and a recipe inside the same transaction.\nBEGIN;\nINSERT INTO users (name, email) VALUES ('David', 'david@sample.com');\nCOMMIT;" "transactions"

write_sql_file "06-transactions-security" "-- 📌 Exercise: User Roles\n-- 🔹 Instructions: Modify this script to create a 'moderator' role with read-only access.\nCREATE ROLE admin WITH LOGIN PASSWORD 'admin123';\nGRANT ALL PRIVILEGES ON DATABASE recipes_db TO admin;" "user_roles"

write_sql_file "06-transactions-security" "-- 📌 Exercise: Permissions\n-- 🔹 Instructions: Modify this script to revoke delete permissions from regular users.\nREVOKE DELETE ON users FROM public;" "permissions"

# 🟢 07-Final Project
write_sql_file "07-final-project" "-- 📌 Exercise: Design a Recipe Manager Database\n-- 🔹 Instructions: Modify this script to include an 'ingredients' table linked to recipes.\nCREATE TABLE recipe_categories (\n    id SERIAL PRIMARY KEY,\n    name TEXT UNIQUE NOT NULL\n);" "schema_design"

write_sql_file "07-final-project" "-- 📌 Exercise: Insert sample data\n-- 🔹 Instructions: Insert at least 5 different categories into the categories table.\nINSERT INTO recipe_categories (name) VALUES ('Dessert'), ('Breakfast');" "sample_data"

write_sql_file "07-final-project" "-- 📌 Exercise: Search & Filtering\n-- 🔹 Instructions: Modify this query to filter recipes by category name.\nSELECT * FROM recipes WHERE title ILIKE '%chicken%';" "search_filtering"

write_sql_file "07-final-project" "-- 📌 Exercise: Optimize Queries\n-- 🔹 Instructions: Modify this script to analyze the performance of a slow query.\nEXPLAIN ANALYZE SELECT * FROM recipes;" "optimization"

echo "✅ SQL learning roadmap has been set up! Navigate to '$BASE_DIR' and start practicing."
