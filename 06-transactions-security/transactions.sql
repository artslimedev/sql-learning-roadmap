-- 📌 Exercise: Transactions
-- 🔹 Instructions: Modify this script to insert a user and a recipe inside the same transaction.
BEGIN;
INSERT INTO users (name, email) VALUES ('David', 'david@sample.com');
COMMIT;
