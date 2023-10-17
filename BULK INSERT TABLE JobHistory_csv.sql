

BULK INSERT JOB_HISTORY
FROM 'C:\Users\hasan\OneDrive\Desktop\IBM Data Analyst\6.Databases and SQL for Data Science with Python\JobsHistory.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 1
);


SELECT *
FROM JOB_HISTORY;