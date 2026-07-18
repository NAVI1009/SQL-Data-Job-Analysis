/*
===========================================
Question 1: What are the top-paying Data Analyst jobs?
===========================================

Objective:
Identify the highest-paying remote Data Analyst positions by analyzing
job postings with specified annual salaries.

Dataset:
- job_postings_fact
- company_dim

Approach:
1. Filter for Data Analyst roles.
2. Consider only remote jobs.
3. Exclude records with missing salary information.
4. Join company information.
5. Sort by highest annual salary.
6. Return the top-paying opportunities.

Skills Demonstrated:
- SELECT
- INNER JOIN
- WHERE
- ORDER BY
- LIMIT

Expected Insight:
Provides a list of the highest-paying remote Data Analyst jobs,
including company names and salary information.
*/
SELECT
    job_id,
    job_title,
    name AS company_name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM 
    job_postings_fact
LEFT JOIN company_dim ON 
    job_postings_fact.company_id=company_dim.company_id
WHERE
    job_location='Anywhere' AND 
    job_title_short='Data Analyst' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10;
