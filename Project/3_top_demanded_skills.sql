/*
===========================================
Question 3: What are the most in-demand skills for Data Analysts?
===========================================

Objective:
Identify the skills that appear most frequently across
Data Analyst job postings.

Dataset:
- job_postings_fact
- skills_job_dim
- skills_dim

Approach:
1. Filter Data Analyst job postings.
2. Count the occurrence of each skill.
3. Rank skills by demand.
4. Return the most frequently requested skills.

Skills Demonstrated:
- COUNT()
- GROUP BY
- ORDER BY
- Aggregate Functions

Expected Insight:
Highlights the most sought-after skills employers expect
from Data Analysts.
*/
SELECT 
    skills,
    count(skills_job_dim.job_id) AS demand_count
FROM 
    job_postings_fact
INNER JOIN skills_job_dim ON 
    job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON 
    skills_job_dim.skill_id=skills_dim.skill_id
WHERE
    job_title_short='Data Analyst'
    AND job_work_from_home='True'
GROUP BY
    skills_dim.skills
ORDER BY
    demand_count DESC
LIMIT 5;
