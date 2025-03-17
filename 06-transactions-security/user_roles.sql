-- 📌 Exercise: User Roles
-- 🔹 Instructions: Modify this script to create a 'moderator' role with read-only access.
CREATE ROLE admin WITH LOGIN PASSWORD 'admin123';
GRANT ALL PRIVILEGES ON DATABASE recipes_db TO admin;
