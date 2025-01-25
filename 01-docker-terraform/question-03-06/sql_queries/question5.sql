SELECT 
    l.locationid AS location_id, 
    l.zone AS zone, 
    SUM(t.total_amount) AS sum_total_amount
FROM 
    locations l
LEFT JOIN 
    trips t ON l.locationid = t.pulocationid
WHERE 
    DATE(t.lpep_pickup_datetime) = '2019-10-18'
GROUP BY 
    l.locationid, l.zone
HAVING 
    SUM(t.total_amount) > 13000;