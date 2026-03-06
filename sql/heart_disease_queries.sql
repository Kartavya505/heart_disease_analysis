use data;
SELECT * FROM `copy of heart_new2 - heart_new2`;
RENAME TABLE `copy of heart_new2 - heart_new2` TO heart_data;
select * from heart_data;
select HeartDisease, Diabetic from heart_data;
SELECT COUNT(*) AS total_patients
FROM heart_data;
SELECT HeartDisease, COUNT(*) AS count
FROM heart_data
GROUP BY HeartDisease;
SELECT Diabetic, HeartDisease, COUNT(*) AS count
FROM heart_data
GROUP BY Diabetic, HeartDisease;
SELECT Sex, HeartDisease, COUNT(*) AS count
FROM heart_data
GROUP BY Sex, HeartDisease;
SELECT Smoking, HeartDisease, COUNT(*) AS count
FROM heart_data
GROUP BY Smoking, HeartDisease;
SELECT 
    CASE 
        WHEN BMI < 18.5 THEN 'Underweight'
        WHEN BMI BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN BMI BETWEEN 25 AND 29.9 THEN 'Overweight'
        ELSE 'Obese'
    END AS BMI_Category,
    HeartDisease,
    COUNT(*) AS count
FROM heart_data
GROUP BY BMI_Category, HeartDisease;