# Healthcare Dataset Analysis

Welcome to my **Healthcare Dataset Analysis Portfolio!** This project demonstrates my proficiency in **SQL** for analyzing healthcare data. Below, you'll find the project objectives, key insights, and links to the dataset and code.

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

## ✨ Conclusion

This analysis highlights key insights into healthcare operations and patient care. The findings can assist healthcare providers in optimizing resources, enhancing patient outcomes, and improving operational efficiency.
For questions or collaboration, feel free to reach out at **ssmujtaba1@gmail.com**.

---
