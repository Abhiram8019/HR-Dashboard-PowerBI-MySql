# HR-Dashboard-PowerBI-MySql
## Data Used

**Data** - HR Data with over 22000 rows from the year 2000 to 2020.

**Data Cleaning & Analysis** - MySQL Workbench

**Data Visualization** - PowerBI

## Questions

1. What is the gender breakdown of employees in the company?
2. What is the race/ethnicity breakdown of employees in the company?
3. What is the age distribution of employees in the company?
4. How many employees work at headquarters versus remote locations?
5. What is the average length of employment for employees who have been terminated?
6. How does the gender distribution vary across departments and job titles?
7. What is the distribution of job titles across the company?
8. Which department has the highest turnover rate?
9. What is the distribution of employees across locations by state?
10. How has the company's employee count changed over time based on hire and term dates?
11. What is the tenure distribution for each department?

## Summary of Findings
 - There are more male employees
 - American Indians and Native Hawaiians are the least dominant races, whereas white people are the most.
 - The youngest employee is 20 years old and the oldest is 57 years old
 - Five age groups—18–24, 25–34, 35–44, 45–54, and 55–64—were established. Most employees were in the 25–34 age range, then the 35–44 age range, and the 55–64 age range was the smallest.
 - Instead of working remotely, many employees are based at the headquarters.
 - The average length of employment for terminated employees is around 7 years.
 - The gender distribution across departments is fairly balanced but there are generally more male than female employees.
 - The department with the highest turnover rate is marketing, which is followed by training. The departments with the lowest turnover rates are legal, support, and research and development.
 - A large number of employees come from the state of Ohio.
 - The net change in employees has increased over the years.
 - The average tenure for each department is about 8 years with Legal and Auditing having the highest and Services, Sales and Marketing having the lowest.

## Limitations
- Some records had negative ages and these were excluded during querying(967 records). Ages used were 18 years and above.
- Some termdates were far into the future and were not included in the analysis(1599 records). The only term dates used were those less than or equal to the current date.
