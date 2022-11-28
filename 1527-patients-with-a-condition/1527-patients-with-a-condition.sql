# Write your MySQL query statement below
SELECT patient_id, patient_name, conditions
FROM Patients
WHERE CONDITIONS LIKE '% DIAB1%' OR CONDITIONS LIKE 'DIAB1%';