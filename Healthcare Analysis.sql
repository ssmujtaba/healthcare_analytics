## Healthcare Dataset Portfolio Structure

/*
This portfolio showcases data analysis skill using SQL to a healtcare dataset containing patient demographics,
diagnoses, procedures, and insurance information. The goal is to extract meaningful insights about patient
healthcare utilization, costs, and potential trends.
*/

-- Creating table in SQL

create table healthcare_analysis
(
Name varchar (30),
Age int,
Gender varchar (10),
Blood_Type varchar (5),
Medical_Condition varchar (20),
Date_of_Admission date,
Doctor varchar (30),
Hospital varchar (50),
Insurance_Provider varchar (20),
Billing_Amount decimal (15,4),
Room_Number int,
Admission_Type varchar (15),
Discharge_Date date,
Medication varchar (30),
Test_Results varchar (20)
);

-- Importing the dataset

LOAD DATA INFILE 'C://ProgramData//MySQL//MySQL Server 9.0//Uploads//healthcare_dataset.csv'
INTO TABLE healthcare_analysis
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Tasks to solve
-- 1. Most Common Diagnoses

SELECT Medical_Condition, COUNT(*) AS Frequency
FROM healthcare_analysis_backup
GROUP BY Medical_Condition
ORDER BY Frequency DESC
LIMIT 10;

-- 2. Patient Age Distribution
SELECT
    CASE
        WHEN Age BETWEEN 0 AND 18 THEN '0-18'
        WHEN Age BETWEEN 19 AND 35 THEN '19-35'
        WHEN Age BETWEEN 36 AND 60 THEN '36-60'
        ELSE '60+'
    END AS Age_Group,
    COUNT(*) AS Num_Patients
FROM healthcare_analysis_backup
GROUP BY Age_Group
ORDER BY Age_Group;

-- 3. Admission Trends Over Time

SELECT
    YEAR(date_of_admission) AS Admission_Year,
    COUNT(*) AS Num_Admissions
FROM healthcare_analysis_backup
GROUP BY Admission_Year
ORDER BY Admission_Year;

-- 4. Average Length of Stay
SELECT
    Medical_Condition,
    AVG(DATEDIFF(Discharge_Date, Date_of_Admission)) AS Average_Length_of_Stay
FROM healthcare_analysis_backup
GROUP BY Medical_Condition
ORDER BY Average_Length_of_Stay DESC;

-- 5. Revenue Analysis

SELECT
    Medical_Condition,
    round(SUM(Billing_Amount),2) AS Total_Revenue,
    round(AVG(Billing_Amount),2) AS Average_Revenue
FROM healthcare_analysis_backup
GROUP BY Medical_Condition
ORDER BY Total_Revenue DESC;

-- 6. Patients with Chronic Conditions

SELECT Name, COUNT(*) AS Frequency
FROM healthcare_analysis_backup
WHERE Medical_Condition IN ('Diabetes', 'Hypertension', 'Arthritis')
GROUP BY Name
HAVING COUNT(*) > 1;

-- 7. Doctor-Patient Ratios

SELECT
    Hospital,
    CAST(COUNT(DISTINCT Doctor) AS REAL) / COUNT(DISTINCT Name) AS Doctor_Patient_Ratio
FROM healthcare_analysis_backup
GROUP BY Hospital
ORDER BY Doctor_Patient_Ratio;

-- 8. Patient Demographics by Diagnosis

WITH Top5Conditions AS (
    SELECT Medical_Condition
    FROM healthcare_analysis_backup
    GROUP BY Medical_Condition
    ORDER BY COUNT(*) DESC
    LIMIT 5
)
SELECT
    h.Medical_Condition,
    h.Gender,
    AVG(h.Age) AS Average_Age
FROM healthcare_analysis_backup h
JOIN Top5Conditions t
    ON h.Medical_Condition = t.Medical_Condition
GROUP BY h.Medical_Condition, h.Gender
ORDER BY h.Medical_Condition, h.Gender;

-- 9. High-Cost Patients

SELECT Name, round((Billing_Amount),2)
FROM healthcare_analysis_backup
ORDER BY Billing_Amount DESC