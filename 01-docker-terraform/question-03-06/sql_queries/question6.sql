SELECT 
    l1.zone AS pickup_zone, 
    l2.zone AS dropoff_zone, 
    MAX(t.tip_amount) AS max_tip
FROM 
    trips t
JOIN 
    locations l1 ON t.pulocationid = l1.locationid
JOIN 
    locations l2 ON t.dolocationid = l2.locationid
WHERE 
    DATE(t.lpep_pickup_datetime) >= '2019-10-01' 
    AND DATE(t.lpep_pickup_datetime) < '2019-11-01'
    AND l1.zone = 'East Harlem North'
GROUP BY 
    l1.zone, l2.zone
ORDER BY 
    max_tip DESC
LIMIT 1;