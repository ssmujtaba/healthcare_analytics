# Healthcare Dataset Analysis

Welcome to my **Healthcare Dataset Analysis Portfolio!** This project demonstrates my proficiency in **SQL** and **Python** for analyzing healthcare data. Below, you'll find the project objectives, key insights, and links to the dataset and code.

---

## 🌐 Project Overview

This project involves analyzing a healthcare dataset to uncover trends, optimize hospital operations, and provide actionable insights. The analysis focuses on patient demographics, common medical conditions, revenue streams, and hospital efficiency.

---

## 📁 Repository Structure

```
|-- healthcare_dataset.csv             # Dataset: Healthcare data
|-- Healthcare Analysis.sql           # SQL queries for data analysis
|-- README.md                         # Project documentation (this file)
```
---

## 💾 Dataset Details

| Column Name | Description |
| --- | --- |
| Age | Age of the patient |
| Gender | Gender of the patient |
| Diagnosis | Medical condition diagnosed |
| Admission_Date | Date of hospital admission |
| Discharge_Date | Date of hospital discharge |
| Length_of_Stay | Total days spent in the hospital |
| Treatment_Cost | Total cost of treatment |

---

## 🔍 Key Insights

I utilized SQL to query and analyze the healthcare dataset. The following tasks were performed:

**1.  Most Common Diagnoses:** Identified the top 10 diagnoses by frequency.

```
    |Medical Condition|Frequency|
    |:---|:---|
    |Cancer|9987|
    |Arthritis|9978|
    |Diabetes|9949|
    |Asthma|9943|
    |Obesity|9928|
    |Hypertension|9881|
```
**Insight**
* The most common diagnosis is Cancer, with a frequency of 9.98%.
* The least common diagnosis among the top 10 is Hypertension, with a frequency of 9.88%.

**2. Patient Age Distribution:** Grouped patients into age ranges and calculated the number of patients in each group.

```
    |Age_Group|Num_Patients|
    |:---|:---|
    |0-18|16670|
    |19-35|16719|
    |36-60|16834|
    |60+|16792|
```
**Insight**
* The age group with the highest number of patients is 60+, with 16792 patients.
* The age group with the least number of patients is 0-18, with 16670 patients.

**3. Admission Trends Over Time:** Analyzed yearly trends in patient admissions.

```
    |Admission_Year|Num_Admissions|
    |:---|:---|
    |2019|14669|
    |2020|14794|
    |2021|14921|
    |2022|14989|
    |2023|14886|
    |2024|14756|
```
**Insight**

* The year with the highest number of patient admissions is 2022, with 14989 admissions.
* The year with the least number of patient admissions is 2019, with 14669 admissions.


**4. Average Length of Stay:** Calculated the average length of stay by diagnosis.

```
    |Medical Condition|Average_Length_of_Stay|
    |:---|:---|
    |Hypertension|14.990637|
    |Asthma|14.987334|
    |Cancer|14.964691|
    |Arthritis|14.959672|
    |Obesity|14.919163|
    |Diabetes|14.832277|
```

**Insight**

* The diagnosis with the highest average length of stay is Hypertension, with an average of 14.99 days.
* The diagnosis with the least average length of stay is Diabetes, with an average of 14.83 days.


**5.  Revenue Analysis:** Calculated total and average revenue by diagnosis.

```
    |Medical Condition|Total_Revenue|Average_Revenue|
    |:---|:---|:---|
    |Arthritis|249934395.00|25043.524905|
    |Asthma|249783926.40|25118.719548|
    |Cancer|249693832.80|25019.425828|
    |Diabetes|249489063.40|25064.036841|
    |Obesity|249299064.70|25105.754343|
    |Hypertension|248895915.90|25168.515039|
```
**Insight**

* The diagnosis with the highest total revenue is Arthritis, with 249934395.00.
* The diagnosis with the least total revenue is Hypertension, with 248895915.90.

**6. Patients with Chronic Conditions:** Identified patients treated for chronic conditions multiple times.

```
    |Name|Frequency|
    |:---|:---|
    |Aaron Friedman|2|
    |Aaron Martinez|2|
    |Abbey Harris|2|
    |Abbie Griffin|2|
    |Abby Martins|2|
    |Abigail Campbell|2|
    |Abigail Robinson|2|
    |Adam Griffin|2|
    |Adam Robinson|2|
    |Adam Wilson|2|
```
**Insight**

* There are 290 patients who have been treated for chronic conditions multiple times over the dataset's timeline.

**7. Doctor-Patient Ratios:** Calculated the ratio by hospital.

```
    |Hospital|Doctor_Patient_Ratio|
    |:---|:---|
    |White-White|0.001442|
    |Hernandez Rogers and Vang|0.001443|
    |Bennett-Jenkins|0.001444|
    |Smith PLC|0.001446|
    |Kelly PLC|0.001447|
    |Jones LLC|0.001450|
    |Williams and Sons|0.001451|
    |Brown-Smith|0.001451|
    |Martinez-Brown|0.001453|
    |Smith and Sons|0.001454|
```
**Insight**

* The hospital with the highest doctor-patient ratio is Cook PLC, with a ratio of 0.00146.
* The hospital with the least doctor-patient ratio is White-White, with a ratio of 0.00144.

**8. Patient Demographics by Diagnosis:** Analyzed demographics for the top diagnoses.

```
    |Medical Condition|Gender|Average_Age|
    |:---|:---|:---|
    |Arthritis|Female|49.643734|
    |Arthritis|Male|49.412963|
    |Asthma|Female|49.789515|
    |Asthma|Male|49.547134|
    |Cancer|Female|49.779595|
    |Cancer|Male|49.679946|
    |Diabetes|Female|49.639812|
    |Diabetes|Male|49.271149|
    |Obesity|Female|49.699393|
    |Obesity|Male|49.447662|
```
**Insight**

* For most of the top 5 diagnoses, the average age of female patients is higher than male patients.
* For Hypertension, the average age of female patients is 49.75, which is higher than male patients (49.65).

**9. High-Cost Patients:** Identified the top 5% of patients contributing the most to revenue.

```
2775 rows
```
**Insight**

* The top 5% of patients contributing the most to total revenue or cost are 2775 patients.
---

## 🗄️ SQL Analysis

The SQL code used in this project demonstrates the following:

Data Definition: Creating tables to store healthcare data.

Data Manipulation: Filtering, grouping, and aggregating data to extract insights.

Advanced Techniques: Utilizing joins, window functions, and subqueries for deeper analysis.

---

## 🐍 Data Analysis with Python

The Python analysis utilizes libraries like Pandas, NumPy, and Matplotlib/Seaborn. It covers:

* 🧹 Exploratory Data Analysis (EDA) and Data Cleaning
* 📊 Data Visualization
* 🔧 Feature Engineering

# **1. Exploratory Data Analysis (EDA) and Data Cleaning**

```
Shape of the dataset: (55500, 15)
Data types of each column:
 Name                   object
Age                     int64
Gender                 object
Blood Type             object
Medical Condition      object
Date of Admission      object
Doctor                 object
Hospital               object
Insurance Provider     object
Billing Amount        float64
Room Number             int64
Admission Type         object
Discharge Date         object
Medication             object
Test Results           object
dtype: object
Descriptive statistics:
                 Age  Billing Amount   Room Number
count  55500.000000    55500.000000  55500.000000
mean      51.539459    25539.316097    301.134829
std       19.602454    14211.454431    115.243069
min       13.000000    -2008.492140    101.000000
25%       35.000000    13241.224652    202.000000
50%       52.000000    25538.069376    302.000000
75%       68.000000    37820.508436    401.000000
max       89.000000    52764.276736    500.000000
Missing values:
 Name                  0
Age                   0
Gender                0
Blood Type            0
Medical Condition     0
Date of Admission     0
Doctor                0
Hospital              0
Insurance Provider    0
Billing Amount        0
Room Number           0
Admission Type        0
Discharge Date        0
Medication            0
Test Results          0
dtype: int64
```

**Insight**

* Interpretation: The dataset has 55,500 rows and 15 columns.
* Columns like Name, Gender, Medical Condition, etc., are of type Object, while Age and Room Number are of type int64, and Billing Amount is of type float64.

```

| Name          | Age   | Gender   | Blood Type   | Medical Condition   | Date of Admission   | Doctor           | Hospital                   | Insurance Provider   | Billing Amount   | Room Number   | Admission Type   | Discharge Date      | Medication   | Test Results   |
|:--------------|:------|:---------|:-------------|:--------------------|:--------------------|:-----------------|:---------------------------|:---------------------|:-----------------|:--------------|:-----------------|:--------------------|:-------------|:---------------|
| Bobby Jackson | 30    | Male     | B-           | Cancer              | 2024-01-31 00:00:00 | Matthew Smith    | Sons and Miller            | Blue Cross           | 18856.3          | 328           | Urgent           | 2024-02-02 00:00:00 | Paracetamol  | Normal         |
| Leslie Terry  | 62    | Male     | A+           | Obesity             | 2019-08-20 00:00:00 | Samantha Davies  | Kim Inc                    | Medicare             | 33643.3          | 265           | Emergency        | 2019-08-26 00:00:00 | Ibuprofen    | Inconclusive   |
| Danny Smith   | 76    | Female   | A-           | Obesity             | 2022-09-22 00:00:00 | Tiffany Mitchell | Cook PLC                   | Aetna                | 27955.1          | 205           | Emergency        | 2022-10-07 00:00:00 | Aspirin      | Normal         |
| Andrew Watts  | 28    | Female   | O+           | Diabetes            | 2020-11-18 00:00:00 | Kevin Wells      | Hernandez Rogers and Vang, | Medicare             | 37909.8          | 450           | Elective         | 2020-12-18 00:00:00 | Ibuprofen    | Abnormal       |
| Adrienne Bell | 43    | Female   | AB+          | Cancer              | 2022-09-19 00:00:00 | Kathleen Hanna   | White-White                | Aetna                | 14238.3          | 458           | Urgent           | 2022-10-09 00:00:00 | Penicillin   | Abnormal       |

```

**Insight**:

* The Name column is standardized by capitalizing the first letter of each word.
* The Date of Admission and Discharge Date columns are converted to datetime objects for further analysis and manipulation.

---

# **2. Data Visualization**

![image](https://github.com/user-attachments/assets/439389f2-9176-4d72-8b0f-ad43ef2fc257)

**Insight**:

* The pie chart shows that there are more females (50.0%) than males (50.0%) in the dataset.

---

![image](https://github.com/user-attachments/assets/6e99c2a7-2abc-4e51-bcde-7e69fbf9aecb)

**Insight**

* The bar chart shows that Hypertension, Cancer, and Diabetes are the top 3 medical conditions in the dataset.

---

![image](https://github.com/user-attachments/assets/42d0c587-a5fa-4658-b37f-c6e1cf4bba91)


**Insight**

* The pie chart shows that the majority of admissions are Emergency (37.3%), followed by Urgent (33.1%) and Elective (29.6%).

---

![image](https://github.com/user-attachments/assets/08adf01b-9de8-4b65-833e-dd2a21d7da5d)

**Insight**

* The heatmap shows the correlation between numerical variables, with darker shades indicating stronger correlations.

---

# **3. Feature Engineering**

![image](https://github.com/user-attachments/assets/db4b107a-668b-43f0-90b6-bf2b36a31ee2)

**Insight**

* This new feature could be useful for further analysis, such as predicting the billing amount based on the length of stay and other factors.

---

| Medical Condition   | Length of Stay   | Billing Amount   |
|:--------------------|:-----------------|:-----------------|
| Asthma              | 15.6966          | 25635.2          |
| Arthritis           | 15.5174          | 25497.3          |
| Cancer              | 15.4958          | 25161.8          |
| Obesity             | 15.4643          | 25806            |
| Hypertension        | 15.4586          | 25497.1          |

 #   Column             Non-Null Count  Dtype  
---  ------             --------------  -----  
 0   Medical Condition  6 non-null      object 
 1   Length of Stay     6 non-null      float64
 2   Billing Amount     6 non-null      float64
dtypes: float64(2), object(1)
memory usage: 192.0+ bytes
None

**Insight**

I've added a new column named Billing Amount Per Day. This column represents the average amount billed per day for each patient. I can then use this new feature to perform further analysis, such as:

* Comparing the billing amount per day across different medical conditions.
* Analyzing the relationship between billing amount per day and length of stay
* Identifying patients with unusually high or low billing amounts per day

---

📝 Additional Notes:

* The Python code was developed and executed using Jupyter Notebook on Google Colab.
* The visualizations generated from the Python analysis are included in the 'Healthcare Analysis.pdf' file.

## ✨ Conclusion

This portfolio demonstrates my ability to leverage both SQL and Python to analyze and visualize healthcare data. 💪 The combination of these powerful tools allows for a comprehensive understanding of patient healthcare utilization, costs, and potential trends. 💡

---
