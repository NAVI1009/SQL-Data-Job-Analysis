/*
===========================================
Question 4: Which skills are associated with the highest salaries?
===========================================

Objective:
Calculate the average salary for each technical skill
to identify the highest-paying skills.

Dataset:
- job_postings_fact
- skills_job_dim
- skills_dim

Approach:
1. Join salary information with required skills.
2. Calculate average salary for each skill.
3. Rank skills by average salary.

Skills Demonstrated:
- AVG()
- GROUP BY
- ORDER BY
- Aggregate Functions

Expected Insight:
Identifies the technical skills that command the
highest average salaries in the job market.
*/
SELECT 
    skills,
    ROUND(avg(salary_year_avg),0) AS salary_avg
FROM 
    job_postings_fact
INNER JOIN skills_job_dim ON 
    job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON 
    skills_job_dim.skill_id=skills_dim.skill_id
WHERE
    job_title_short='Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home='True'
GROUP BY
    skills_dim.skills
ORDER BY
    salary_avg DESC
LIMIT 25;
