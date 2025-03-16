# SQL Learning Roadmap

## 📌 Overview

This repository contains structured exercises and examples to help you learn SQL from basics to advanced topics. The exercises focus on PostgreSQL but can be adapted for other databases.

## 📂 Repository Structure

```
📦 sql-learning-roadmap
 ┣ 📂 01-setup-basics
 ┃ ┣ 📜 create_database.sql
 ┃ ┣ 📜 create_users_table.sql
 ┃ ┣ 📜 insert_users.sql
 ┃ ┣ 📜 select_users.sql
 ┣ 📂 02-querying-filtering
 ┃ ┣ 📜 where_clause.sql
 ┃ ┣ 📜 order_by.sql
 ┃ ┣ 📜 limit_offset.sql
 ┣ 📂 03-joins-relationships
 ┃ ┣ 📜 create_recipes_table.sql
 ┃ ┣ 📜 insert_recipes.sql
 ┃ ┣ 📜 join_queries.sql
 ┣ 📂 04-aggregations-grouping
 ┃ ┣ 📜 count_sum_avg.sql
 ┃ ┣ 📜 group_by_having.sql
 ┣ 📂 05-advanced-queries
 ┃ ┣ 📜 subqueries.sql
 ┃ ┣ 📜 ctes.sql
 ┃ ┣ 📜 indexing.sql
 ┣ 📂 06-transactions-security
 ┃ ┣ 📜 transactions.sql
 ┃ ┣ 📜 user_roles.sql
 ┃ ┣ 📜 permissions.sql
 ┣ 📂 07-final-project
 ┃ ┣ 📜 schema_design.sql
 ┃ ┣ 📜 sample_data.sql
 ┃ ┣ 📜 search_filtering.sql
 ┃ ┣ 📜 optimization.sql
 ┗ 📜 README.md
```

## 🚀 Getting Started

### 1️⃣ Install PostgreSQL

- Download from [postgresql.org](https://www.postgresql.org/download/)
- Start the PostgreSQL service

### 2️⃣ Clone the Repository

```sh
git clone https://github.com/your-username/sql-learning-roadmap.git
cd sql-learning-roadmap
```

### 3️⃣ Run SQL Scripts

Run the SQL scripts inside PostgreSQL:

```sh
psql -U your_user -d your_database -f 01-setup-basics/create_database.sql
```

### 4️⃣ Modify & Practice

- Open the `.sql` files in an SQL editor.
- Run queries and modify them to test different conditions.

## 📝 Learning Topics & Exercises

### ✅ **Week 1: Setup & Basics**

- Create a database and tables
- Insert & retrieve data
- Basic queries with `SELECT`, `FROM`, `WHERE`

### ✅ **Week 2: Querying & Filtering**

- Filtering with `WHERE`
- Sorting with `ORDER BY`
- Pagination with `LIMIT` and `OFFSET`

### ✅ **Week 3: Joins & Relationships**

- `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`
- Foreign keys & `ON DELETE CASCADE`

### ✅ **Week 4: Aggregations & Grouping**

- `COUNT()`, `SUM()`, `AVG()`
- `GROUP BY` and `HAVING`

### ✅ **Week 5: Advanced Queries**

- Subqueries & Common Table Expressions (CTEs)
- Indexing for performance

### ✅ **Week 6: Transactions & Security**

- Transactions (`BEGIN`, `COMMIT`, `ROLLBACK`)
- User roles & permissions

### ✅ **Final Project**

- Build a **Recipe Manager Database**
- Implement **search & filtering**
- Optimize queries using indexes

---

## 💡 Contributions

Feel free to fork this repo and add more exercises or improvements!

## 📜 License

This project is licensed under the MIT License.
