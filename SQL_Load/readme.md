# 🗄 Database Setup

This folder contains the SQL scripts required to build the PostgreSQL database used in this project.



## Database Architecture

erDiagram

company_dim ||--o{ job_postings_fact : employs

job_postings_fact ||--o{ skills_job_dim : requires

skills_dim ||--o{ skills_job_dim : contains


# 📂 SQL Scripts

## 1️⃣ Create Database

File: 1_create_database.sql

Creates the PostgreSQL database.


## 2️⃣ Create Tables

File: 2_create_tables.sql

Creates all required tables.

Tables:

- company_dim
- job_postings_fact
- skills_dim
- skills_job_dim


## 3️⃣ Modify Tables

File: 3_modify_tables.sql

Performs:

- Data type modifications
- Table cleanup
- Constraint updates
- Schema optimization


# ⚙ Database Workflow

flowchart LR

A[Create Database]

-->B[Create Tables]

-->C[Import CSV Files]

-->D[Modify Tables]

-->E[Ready for Analysis]

# 🛠 Database

- PostgreSQL
- CSV Import
- Relational Database Design

# 📁 Folder Purpose

This folder prepares the database before executing the analytical SQL queries contained in the **Project** folder.
