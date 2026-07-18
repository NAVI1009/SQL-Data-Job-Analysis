WITH Skill_demand AS 
    (SELECT 
        skills_dim.skill_id,
        skills_dim.skills,
        count(skills_job_dim.job_id) AS demand_count
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
        skills_dim.skill_id
    ORDER BY
        skill_id 
    LIMIT 10),

    High_paying_skills AS (SELECT 
        skills_dim.skill_id,
        skills_dim.skills,
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
        skills_dim.skill_id
    ORDER BY
        skill_id
    LIMIT 10)

SELECT 
    Skill_demand.skill_id,
    Skill_demand.skills,
    demand_count,
    salary_avg
FROM 
Skill_demand
INNER JOIN High_paying_skills ON 
    Skill_demand.skill_id=High_paying_skills.skill_id
WHERE
    demand_count>10
ORDER BY 
    salary_avg DESC,
    demand_count DESC;