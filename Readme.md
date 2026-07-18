📊 SQL Data Job Analysis

A SQL project that explores the Data Analyst job market by analyzing job postings, salaries, and required skills using PostgreSQL.

This project answers real-world business questions to help aspiring Data Analysts identify high-paying jobs, in-demand skills, and the most valuable skills to learn.

🚀 Project Overview

The objective of this project is to analyze thousands of Data Analyst job postings and extract meaningful insights using SQL.

The analysis focuses on:

- 💰 Highest-paying Data Analyst jobs
- 🛠 Skills required for top-paying jobs
- 📈 Most in-demand technical skills
- 💵 Highest-paying technical skills
- 🎯 Optimal skills based on demand and salary

📂 Project Structure
SQL-Data-Job-Analysis
│
├── sql_load/
│   ├── 1_create_database.sql
│   ├── 2_create_tables.sql
│   └── 3_modify_tables.sql
│
├── Project/
│   ├── 1_top_paying_jobs.sql
│   ├── 2_top_paying_skills.sql
│   ├── 3_top_demanded_skills.sql
│   ├── 4_top_paying_skills_acc_salary.sql
│   └── 5_optimal_skills.sql
│
├── screenshots/
│
├── README.md
├── LICENSE
└── .gitignore


❓ Business Questions

This project answers the following questions:

1️⃣ What are the top-paying Data Analyst jobs?

Identify the highest-paying remote Data Analyst positions.

2️⃣ What skills are required for these top-paying jobs?

Determine which technical skills employers expect for high-paying positions.

3️⃣ What are the most in-demand skills?

Find the skills most frequently requested across Data Analyst job postings.

4️⃣ What are the highest-paying skills?

Calculate the average salary associated with each technical skill.

5️⃣ What are the most optimal skills to learn?

Identify skills that offer both:

- High Demand
- High Salary

These skills provide the best career opportunities.

📈 Analysis Workflow

A[CSV Dataset]

-->B[Create Database]

-->C[Create Tables]

-->D[Import Data]

-->E[Modify Tables]

-->F[SQL Analysis]

F-->G[Top Paying Jobs]

F-->H[Top Paying Skills]

F-->I[Demand Analysis]

F-->J[Salary Analysis]

I-->K[Optimal Skills]

J-->K

📊 SQL Analysis

| Query | Description |
|--------|-------------|
| 1 | Top Paying Data Analyst Jobs |
| 2 | Skills Required for Top Paying Jobs |
| 3 | Most In-Demand Skills |
| 4 | Highest Paying Skills |
| 5 | Optimal Skills (High Demand + High Salary) |

🛠 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- LIMIT
- INNER JOIN
- LEFT JOIN
- Common Table Expressions (CTEs)
- Aggregate Functions
- COUNT()
- AVG()
- Aliasing
- Data Cleaning

💻 Technologies Used

- PostgreSQL
- SQL
- VS Code
- Git
- GitHub

📷 Sample Results

> Add screenshots of your SQL query outputs in the screenshots folder and display them here.

Example:

Top Paying Jobs

![Top Paying Jobs](screenshots/top_paying_jobs.png)


Most In-Demand Skills

![Demanded Skills](screenshots/demanded_skills.png)


Highest Paying Skills

![Highest Paying Skills](screenshots/highest_paying_skills.png)


🎯 Key Insights

- Identified the highest-paying Data Analyst positions.
- Analyzed the technical skills associated with high salaries.
- Discovered the most in-demand skills in the current job market.
- Compared salary and demand to identify the most valuable skills for career growth.


🚀 How to Run

1. Create the PostgreSQL database.
2. Run the scripts inside the sql_load folder.
3. Execute the SQL queries in the Project folder.
4. Analyze the generated results.


👨‍💻 Author

Navdeep Singh

B.Tech | Industrial & Production Engineering

Interested in Data Analytics, SQL, Business Intelligence, and Data Visualization.

⭐ If you found this project helpful, consider giving it a star!
