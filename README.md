# Learning SQL with Postgres Database

## Overview of the analysis

Write SQL queries to analyze the data available in tables (employees, dept_emp, titles etc.) and also create new tables using INTO statements to determine and prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age 
  1. the number of retiring employees per title
  2. identify employees who are eligible to participate in a mentorship program

## Results

1. We were able to determine the employees retiring with their titles and stored them in retirement titles table and then exported to retirement_titles.csv file.

![image](https://user-images.githubusercontent.com/98173091/159192212-96f1fb91-89ca-417b-a4fc-85e99923190c.png)

![image](https://user-images.githubusercontent.com/98173091/159192274-2922e2d1-f56b-4d37-be5d-182bbc9d5762.png)

2. After the retirement titles were determined, we needed to create Unique Titles table that contains the employee number, first and last name, and most recent title in  for retiring employees.

![image](https://user-images.githubusercontent.com/98173091/159192376-fc0af35b-31fe-4654-8af7-69f6836f1e4e.png)

![image](https://user-images.githubusercontent.com/98173091/159192422-5047d6f9-dd2d-42ca-be98-8b405fb8fdf4.png)

3. Next query is to determine the count of titles that will retire, and provide Bobby's manager a very clear picture of how many employees are going to retire in each title

![image](https://user-images.githubusercontent.com/98173091/159192492-2a75b7c5-46e1-415e-b9ac-0ad8a7b6449a.png)

![image](https://user-images.githubusercontent.com/98173091/159192520-43904513-052a-488a-8ba4-384c46d8bf59.png)

4. Last piece of data analysis was to determine list of employees eligible for mentorship program based the birth age. For this we INNER joined the following tables on emp_no which was the primary key on all three tables.
   Employees
   Dept_Emp
   Titles

![image](https://user-images.githubusercontent.com/98173091/159192587-af809bea-2887-4086-a4a4-deb223d0d2e4.png)

![image](https://user-images.githubusercontent.com/98173091/159192679-d1ca5940-7e86-465b-8646-1718ae632037.png)


## Summary

Booby's manager needed our help to gather some actionable data for the following

    1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
      This was determined during the count of titles that will retire. Following is the table that gives 
      us the # of employees aging in each title

![image](https://user-images.githubusercontent.com/98173091/159192970-623d0b3b-4f8f-4245-91c5-b7c5f6d2147f.png)
      
    2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation 
    of Pewlett Hackard employees?
      It appears the # of retirement-ready employees in the departments to mentor the next generation is quite less, 
      we did a count of employees in each title that are  eligible for mentorship program and the ratio is skewed.
      For example, for 25916 Senior Engineer that will retire we have only 529 to mentor the next generation based on 
      the age criteria of born between Jan 01, 1965 and Dec 31, 1965
      
![image](https://user-images.githubusercontent.com/98173091/159193158-0b9d6b28-3b42-4440-b4f2-b199833007f8.png)
