SELECT
    DATE(lpep_pickup_datetime) AS pickup_day,
    MAX(trip_distance) AS longest_trip_distance
FROM
    trips
WHERE
    DATE(lpep_pickup_datetime) IN ('2019-10-11', '2019-10-24', '2019-10-26', '2019-10-31')
GROUP BY
    DATE(lpep_pickup_datetime)
ORDER BY
    longest_trip_distance DESC
LIMIT 1;