

-- Display all departments:
SELECT *
FROM HumanResources.Department;



--Display all employees:
SELECT *
FROM HumanResources.Employee;



-- Display the employee department history:
SELECT *
FROM HumanResources.EmployeeDepartmentHistory



-- Display the employee pay history:
SELECT *
FROM HumanResources.EmployeePayHistory;


-- Display departmentid, name , group name from human resources department
SELECT departmentid,name,groupname 
FROM HumanResources.Department 


-- Output human resources department where group name is not manufacturing 
SELECT *
FROM [HumanResources].[Department]
WHERE GroupName != 'manufacturing'

 

-- The names of departments with their group names, sorted by last modified date in descending order:
SELECT [Name], [GroupName], [ModifiedDate]
FROM [HumanResources].[Department]
ORDER BY [ModifiedDate] DESC;



-- The birth dates and hire dates of employees, sorted by birth date in ascending order:
SELECT [BirthDate], [HireDate]
FROM [HumanResources].[Employee]
ORDER BY [BirthDate] ASC;


-- product numbers of products with a specific color (e.g., 'Blue')
SELECT [ProductNumber]
FROM [Production].[Product]
WHERE [Color] = 'Blue';


-- product names and sizes of products where the size is not 'S':
SELECT [Name], [Size]
FROM [Production].[Product]
WHERE [Size] <> 'S';


-- Product names and their respective colors, sorted by color in ascending order and product name in descending order:
SELECT [Name], [Color]
FROM [Production].[Product]
ORDER BY [Color] ASC, [Name] DESC; 



-- Retrieve the job title, birthdate, marital status, and hire date for female employees 
-- who hold the position of Research and Development Engineer
SELECT jobtitle, birthdate, maritalstatus,gender,hiredate 
FROM  [AdventureWorks2019].[HumanResources].[Employee]
WHERE gender='F' AND JobTitle='Research and Development Engineer' 




-- Product names and sizes of products where the size is 'XS' or 'XL', and the color is not 'Black':
SELECT [Name], [Size]
FROM [Production].[Product]
WHERE [Size] IN ('XS', 'XL') AND [Color] <> 'Black';



-- Display the product names and their respective colors, 
-- where the color is either Black or Blue and the size is 'S':
SELECT [Name], [Color]
FROM [Production].[Product]
WHERE [Color] IN ('Black', 'Blue') AND [Size] = 'S';




-- Display the job titles and hire dates of employees, 
-- where the job title is either Marketing Specialist or Tool Designer :
SELECT [JobTitle], [HireDate]
FROM [HumanResources].[Employee]
WHERE [JobTitle] IN ('Marketing Specialist', 'Tool Designer');



-- Display the names of departments along with their group names, 
-- where the group name is Manufacturing , Quality Assurance and the department name contains the letter 'C':
SELECT [Name], [GroupName]
FROM [HumanResources].[Department]
WHERE [GroupName] IN ('Manufacturing', 'Quality Assurance') AND [Name] LIKE '%C%';


