CREATE DATABASE ai_job_market;
USE ai_job_market;

CREATE TABLE ai_jobs (
    job_id INT,
    job_title VARCHAR(100),
    company_size VARCHAR(50),
    company_industry VARCHAR(100),
    country VARCHAR(100),
    remote_type VARCHAR(50),
    experience_level VARCHAR(50),
    years_experience INT,
    education_level VARCHAR(100),
    skills_python INT,
    skills_sql INT,ai_jobs
    skills_ml INT,
    skills_deep_learning INT,
    skills_cloud INT,
    salary INT,
    job_posting_month INT,
    job_posting_year INT,
    hiring_urgency VARCHAR(50),
    job_openings INT
);

SELECT * FROM ai_jobs;
#total no. of jobs
SELECT COUNT(*) AS total_jobs
FROM ai_jobs;

#different job titles
SELECT DISTINCT job_title
FROM ai_jobs;

#avg salary
SELECT AVG(salary) AS average_salary
FROM ai_jobs;


#jobs in each country
SELECT country, COUNT(*) AS total_jobs
FROM ai_jobs
GROUP BY country;

#jobs by expereince level
SELECT experience_level, COUNT(*) AS total_jobs
FROM ai_jobs
GROUP BY experience_level;

#highest salary
SELECT MAX(salary)
	FROM ai_jobs;

#lowest salary

SELECT MIN(salary)
FROM ai_jobs;

#top 10 highest paying jobs
SELECT job_title, salary
FROM ai_jobs
ORDER BY salary DESC
LIMIT 10;
