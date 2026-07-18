/*
===========================================
Question 2: What skills are required for the top-paying Data Analyst jobs?
===========================================

Objective:
Determine which technical skills are required for the highest-paying
Data Analyst positions.

Dataset:
- job_postings_fact
- company_dim
- skills_job_dim
- skills_dim

Approach:
1. Identify the top-paying Data Analyst jobs.
2. Join the corresponding required skills.
3. Display each skill associated with these jobs.

Skills Demonstrated:
- Common Table Expressions (CTEs)
- Multiple INNER JOINs
- Filtering
- ORDER BY

Expected Insight:
Shows which technical skills are commonly requested in
high-paying Data Analyst roles.
*/
WITH job_company AS
    (SELECT
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
    LIMIT 10)
    SELECT 
        job_company.*,
        skills as skill_demanded
    FROM 
        job_company
    INNER JOIN skills_job_dim ON 
        job_company.job_id=skills_job_dim.job_id
    INNER JOIN skills_dim ON 
        skills_job_dim.skill_id=skills_dim.skill_id
    ORDER BY
        salary_year_avg DESC;
