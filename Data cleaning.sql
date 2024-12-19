CREATE database HR_projects;

USE HR_projects; 

select * from HR;

SET sql_safe_updates = 0 ;

DESCRIBE HR ;

ALTER table HR 
change column ï»¿id emp_id varchar(20) NULL ;

update HR 
SET birthdate = CASE 
	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate,'%m/%d/%Y'),'%Y-%m-%d')
    WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate,'%m-%d-%Y'),'%Y-%m-%d')
    ELSE NULL 
END ;

ALTER TABLE HR 
MODIFY COLUMN birthdate DATE ;



update HR 
SET hire_date = CASE 
	WHEN hire_date LIKE '%/%' THEN date_format(str_to_date(hire_date,'%m/%d/%Y'),'%Y-%m-%d')
    WHEN hire_date LIKE '%-%' THEN date_format(str_to_date(hire_date,'%m-%d-%Y'),'%Y-%m-%d')
    ELSE NULL 
END ;

ALTER TABLE hr
MODIFY COLUMN hire_date DATE;


UPDATE hr
SET termdate = IF(termdate IS NOT NULL AND termdate != '', date(str_to_date(termdate, '%Y-%m-%d %H:%i:%s UTC')), '0000-00-00')
WHERE true;

SELECT termdate from hr;

SET sql_mode = 'ALLOW_INVALID_DATES';

ALTER TABLE hr
MODIFY COLUMN termdate DATE;

ALTER TABLE HR ADD COLUMN age INT ;

UPDATE HR 
SET age = timestampdiff(YEAR,birthdate,CURDATE());

UPDATE HR
SET birthdate = DATE_SUB(birthdate, INTERVAL 100 YEAR)
WHERE birthdate >= '2060-01-01' AND birthdate < '2070-01-01';

SELECT 
	MIN(age) AS youngest,
    MAX(age) AS oldest
FROM HR ;

SELECT COUNT(*) FROM HR WHERE age < 18 ;

SELECT * FROM HR ;
