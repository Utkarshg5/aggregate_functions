# Aggregate Functions and Grouping

## 🎯 Objective
Use aggregate functions and grouping to summarize data effectively.

## 🛠 Tools
- DB Browser for SQLite
- Oracle SQL Developer

## 📂 Files in This Repository
task4_sample_data.csv # Sample dataset
task4_aggregate_grouping.sql # SQL script with table creation, inserts, and queries
README.md # Documentation
.gitignore # Ignore unnecessary files

## 📚 Topics Covered
1. `SUM()` - Total calculations
2. `COUNT()` - Counting records
3. `AVG()` - Calculating averages
4. `GROUP BY` - Categorizing data
5. `HAVING` - Filtering groups

## 📝 Example Queries
```sql
-- 1. Total revenue
SELECT SUM(quantity * price) AS total_revenue 
FROM orders;

-- 2. Average price per category
SELECT category, AVG(price) AS avg_price
FROM orders
GROUP BY category;

-- 3. Filter categories with revenue > 20000
SELECT category, SUM(quantity * price) AS category_revenue
FROM orders
GROUP BY category
HAVING category_revenue > 20000;
