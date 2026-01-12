-- Sample SQL Queries (Advanced)
-- Average Stay Duration per Disease
SELECT disease,
AVG(DATEDIFF(discharge_date, admission_date)) AS avg_stay_days
FROM patients
GROUP BY disease;

-- Top 3 Doctors by Number of Patients
SELECT d.doctor_name, COUNT(a.patient_id) AS total_patients
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_name
ORDER BY total_patients DESC
LIMIT 3;

-- Monthly Revenue Analysis
SELECT 
    MONTH(p.admission_date) AS month,
    SUM(b.total_amount) AS monthly_revenue
FROM billing b
JOIN patients p ON b.patient_id = p.patient_id
GROUP BY MONTH(p.admission_date);

-- Repeat Patients (Window Function)
SELECT patient_id, COUNT(*) AS visits
FROM appointments
GROUP BY patient_id
HAVING COUNT(*) > 1;

-- Doctor Revenue Ranking (Window Function)
SELECT d.doctor_name,
SUM(t.cost) AS revenue,
RANK() OVER (ORDER BY SUM(t.cost) DESC) AS rank_no
FROM doctors d
JOIN appointments a ON d.doctor_id = a.doctor_id
JOIN treatments t ON a.patient_id = t.patient_id
GROUP BY d.doctor_name;
