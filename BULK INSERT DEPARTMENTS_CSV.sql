BULK INSERT DEPARTMENTS
FROM 'C:\Users\hasan\OneDrive\Desktop\IBM Data Analyst\6.Databases and SQL for Data Science with Python\Departments.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 1
);


SELECT *
FROM EPARTMENTS;