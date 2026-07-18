# 📊 SQL Job Market Analysis

This folder contains the SQL queries used to analyze the Data Analyst job market using PostgreSQL.

## 🎯 Business Questions

mindmap
  root((Data Analyst Job Market))
    Top Paying Jobs
    Skills for Top Paying Jobs
    Most In-Demand Skills
    Highest Paying Skills
    Optimal Skills
      High Demand
      High Salary

## 📂 Query Workflow
flowchart LR
A[(job_postings_fact)]
B[(company_dim)]
C[(skills_job_dim)]
D[(skills_dim)]

A --> E[Top Paying Jobs]
A --> F[Top Paying Skills]
A --> G[Demand Analysis]

B --> E
B --> F

C --> F
C --> G
C --> H[Optimal Skills]

D --> F
D --> G
D --> H

# 📁 SQL Files

## 1️⃣ Top Paying Jobs

File: 1_top_paying_jobs.sql

Objective

Identify the highest-paying remote Data Analyst jobs.

**Skills Demonstrated**

- Filtering
- Sorting
- Joins
- Salary Analysis

## 2️⃣ Skills for Top Paying Jobs

File: 2_top_paying_skills.sql

Objective

Find the technical skills required for the highest-paying jobs.

**Skills Demonstrated**

- INNER JOIN
- Multiple Table Joins
- Aggregation

## 3️⃣ Most In-Demand Skills

File: 3_top_demanded_skills.sql

Objective

Identify the skills requested most frequently by employers.

Skills Demonstrated

- COUNT()
- GROUP BY
- ORDER BY


## 4️⃣ Highest Paying Skills

File: 4_top_paying_skills_acc_salary.sql

Objective

Calculate the average salary associated with each skill.

**Skills Demonstrated**

- AVG()
- GROUP BY
- Aggregation

---

## 5️⃣ Optimal Skills to Learn

File: 5_optimal_skills.sql

Objective

Identify skills with:

- High Demand
- High Salary

These provide the best return on investment for aspiring Data Analysts.


# 🛠 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- INNER JOIN
- LEFT JOIN
- Common Table Expressions (CTEs)
- Aggregate Functions
- Subqueries
- Aliases
- LIMIT


# 📈 Project Workflow

A[Load Database]
-->B[Run SQL Queries]

B-->C[Top Paying Jobs]

B-->D[Top Paying Skills]

B-->E[Demand Analysis]

B-->F[Salary Analysis]

E-->G[Optimal Skills]

F-->G
