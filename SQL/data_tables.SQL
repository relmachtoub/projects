# Print the company_name field. Find the number of taxi rides for each taxi company for November 15-16, 2017,
# name the resulting field trips_amount, and print it, too. Sort the results by the trips_amount field in descending order.

SELECT
    cabs.company_name AS company_name,
    COUNT(trip_id) AS trips_amount
FROM
    cabs
LEFT JOIN
    trips
        ON cabs.cab_id = trips.cab_id
WHERE
    CAST(trips.start_ts AS date) BETWEEN '2017-11-15' AND '2017-11-16'
GROUP BY
    company_name
ORDER BY
    trips_amount DESC


SELECT
    cabs.company_name AS company_name,
    COUNT(trips.trip_id) AS trips_amount
FROM
    cabs
INNER JOIN
    trips ON cabs.cab_id = trips.cab_id
WHERE
    CAST(trips.start_ts as date) BETWEEN '2017-11-1' AND '2017-11-07'
    AND (cabs.company_name LIKE '%Yellow%' OR cabs.company_name LIKE '%Blue%')
GROUP BY
    cabs.company_name
ORDER BY
    trips_amount DESC
    

SELECT
    trips.start_ts AS start_ts,
    CASE
        WHEN description LIKE '%rain%'  or description LIKE '%storm%'
        THEN 'Bad'
        ELSE 'Good' END AS weather_conditions,
    duration_seconds AS duration_seconds
FROM
    trips
INNER JOIN
    weather_records
    ON trips.start_ts = weather_records.ts
WHERE
    EXTRACT (DOW from trips.start_ts) = 6 AND trips.pickup_location_id = 50
    AND trips.dropoff_location_id = 63
ORDER BY
    trips.trip_id 
    

    
