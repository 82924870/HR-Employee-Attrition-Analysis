USE HR_Analytics;

SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES;
SELECT TOP 5 *
FROM Empolyees;
SELECT COUNT(*) AS TotalEmployees
FROM  Empolyees;
SELECT COUNT(*) AS EmpolyeesWhoLeft
FROM Empolyees
WHERE Attrition = '1';
SELECT COUNT(*) AS EmpolyeesWhoLeft
FROM Empolyees
WHERE Attrition = '0';
SELECT
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees;

SELECT
    Department,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY Department
ORDER BY AttritionRate DESC;
SELECT
    OverTime,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY OverTime
ORDER BY AttritionRate DESC;

SELECT
    JobRole,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY JobRole
ORDER BY AttritionRate DESC;

SELECT
    JobSatisfaction,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;

SELECT
    WorkLifeBalance,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY WorkLifeBalance
ORDER BY WorkLifeBalance;

SELECT
    Attrition,
    AVG(MonthlyIncome) AS AverageIncome
FROM Empolyees
GROUP BY Attrition;

SELECT
    Attrition,
    AVG(CAST(YearsAtCompany AS DECIMAL(10,2))) AS AverageYearsAtCompany
FROM Empolyees
GROUP BY Attrition;

SELECT
    Attrition,
    AVG(CAST(DistanceFromHome AS DECIMAL(10,2))) AS AverageDistance
FROM Empolyees
GROUP BY Attrition;

SELECT
    BusinessTravel,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY BusinessTravel
ORDER BY AttritionRate DESC;

SELECT
    MaritalStatus,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY MaritalStatus
ORDER BY AttritionRate DESC;

SELECT
    Gender,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY Gender
ORDER BY AttritionRate DESC;


SELECT
    Department,
    OverTime,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY Department, OverTime
ORDER BY AttritionRate DESC;

SELECT
    JobLevel,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY JobLevel
ORDER BY AttritionRate DESC;

SELECT
    YearsAtCompany,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY YearsAtCompany
ORDER BY AttritionRate DESC;

SELECT
    EducationField,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY EducationField
ORDER BY AttritionRate DESC;

SELECT
    EnvironmentSatisfaction,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY EnvironmentSatisfaction
ORDER BY AttritionRate DESC;

SELECT
    JobRole,
    OverTime,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY JobRole, OverTime
HAVING COUNT(*) >= 10
ORDER BY AttritionRate DESC;

SELECT TOP 3
    JobRole,
    OverTime,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) AS EmployeesWhoLeft,
    CAST(
        100.0 * SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) / COUNT(*)
        AS DECIMAL(5,2)
    ) AS AttritionRate
FROM Empolyees
GROUP BY JobRole, OverTime
HAVING COUNT(*) >= 10
ORDER BY AttritionRate DESC;


