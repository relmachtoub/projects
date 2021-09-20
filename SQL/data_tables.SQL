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

# Find the number of rides for every taxi company whose name contains the words "Yellow" or "Blue" for November 1-7, 2017.
# Name the resulting variable trips_amount. Group the results by the company_name field.

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
    
# For November 1-7, 2017, the most popular taxi companies were Flash Cab and Taxi Affiliation Services. 
# Find the number of rides for these two companies and name the resulting variable trips_amount.
# Join the rides for all other companies in the group "Other." Group the data by taxi company names. Name the field with taxi company names company. Sort the result in descending order by trips_amount.

SELECT
    ABC.company AS company,
    COUNT(ABC.trip_id) AS trips_amount
FROM (
SELECT
    CASE 
        WHEN cabs.company_name = 'Flash Cab' 
            THEN 'Flash Cab'
        WHEN cabs.company_name LIKE 'Taxi Affiliation Services'
            THEN 'Taxi Affiliation Services'
        ELSE 'Other' END AS company,
    trips.trip_id AS trip_id
FROM
    cabs
INNER JOIN
    trips ON cabs.cab_id = trips.cab_id
WHERE
    CAST(trips.start_ts AS date) BETWEEN '2017-11-01' AND '2017-11-07'
) AS ABC
GROUP BY
    ABC.company
ORDER BY
    trips_amount DESC
    
# Retrieve the identifiers of the O'Hare and Loop neighborhoods from the neighborhoods table.

SELECT
    *
FROM
    neighborhoods
WHERE
    name = 'Loop' OR name LIKE '%Hare%'
    
    
    
