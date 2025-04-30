
-- SELECT * FROM airports

SELECT 
    ps.PatientId
    , ps.Hospital
    , ps.Ward
    , ps.AdmittedDate
    , ps.DischargeDate
    , ps.Tariff
    , ps.Ethnicity
    , DATEDIFF(DAY, ps.AdmittedDate, ps.DischargeDate) AS LengthOfStay
    , DATEADD(WEEK, -2, ps.AdmittedDate) AS ReminderDate
FROM PatientStay ps
WHERE ps.Hospital IN ('PRUH', 'Oxleas')
AND ps.Ward LIKE '%Surgery'
AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-03-01'