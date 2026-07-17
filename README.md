# 🛒 Zepto Product Data Analysis using SQL

## 📌 Project Overview

This project analyzes a Zepto grocery product dataset using SQL. The objective is to perform data cleaning, exploratory data analysis (EDA), and solve business-related queries to extract meaningful insights from the product inventory.

The project demonstrates practical SQL skills including filtering, sorting, aggregation, grouping, CASE statements, data cleaning, and business analytics.

---

## 🛠️ Technologies Used

- MySQL
- SQL
- MySQL Workbench

---

## 📂 Database Schema

**Database Name:** `zepto`

**Table Name:** `zep`

### Table Structure

| Column | Data Type |
|---------|-----------|
| sku_id | BIGINT |
| category | VARCHAR(120) |
| name | VARCHAR(150) |
| mrp | DECIMAL(10,2) |
| discountPercent | DECIMAL(5,2) |
| availableQuantity | INT |
| discountedSellingPrice | DECIMAL(10,2) |
| weightInGms | INT |
| outOfStock | VARCHAR(5) |
| quantity | INT |

---

## 📊 Project Workflow

### 1. Database Creation
- Created database schema
- Created product table
- Imported Zepto dataset

### 2. Data Cleaning
- Checked total records
- Identified NULL values
- Removed products with zero MRP
- Converted price values from paise to rupees
- Verified duplicate products

### 3. Exploratory Data Analysis (EDA)
- Unique product categories
- Stock availability analysis
- Duplicate SKU detection
- Invalid price detection

### 4. Business Analysis

The following business questions were answered using SQL:

1. Find the Top 10 best-value products based on discount percentage.
2. Identify High MRP products that are Out of Stock.
3. Calculate estimated revenue for each category.
4. Find products where MRP > ₹500 and discount < 10%.
5. Identify the Top 5 categories with the highest average discount.
6. Calculate price per gram for products weighing more than 100g.
7. Classify products into Low, Medium, and Bulk weight categories.
8. Calculate total inventory weight for each category.

---

## 📈 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- LIMIT
- DISTINCT
- Aggregate Functions
  - COUNT()
  - SUM()
  - AVG()
  - ROUND()
- CASE Statement
- DELETE
- UPDATE

---

## 📁 Project Files

```
Zepto-SQL-Project/
│
├── zepto.sql              # Complete SQL project
├── zepto_dataset.csv      # Dataset
├── README.md              # Project Documentation
```

---

## 🎯 Key Skills Demonstrated

- SQL Query Writing
- Data Cleaning
- Data Validation
- Business Analytics
- Inventory Analysis
- Revenue Estimation
- Aggregation Functions
- Conditional Logic
- Database Management

---

## 📚 Learning Outcomes

Through this project, I learned how to:

- Design and create SQL databases
- Clean and preprocess real-world datasets
- Write optimized SQL queries
- Perform business-focused data analysis
- Generate actionable insights using SQL
- Apply aggregate functions and CASE statements effectively

---

## 🚀 Future Improvements

- Build interactive dashboards using Power BI
- Connect SQL database with Python
- Perform advanced analytics using Window Functions
- Create Stored Procedures and Views
- Optimize queries using Indexes

---

## 👩‍💻 Author

**Santhiya**

- Aspiring Data Analyst
- Skilled in SQL, Python, Excel, Power BI, and Data Visualization

---

⭐ If you found this project useful, feel free to star the repository!
