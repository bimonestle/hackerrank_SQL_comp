-- Query the two cities in STATION with the shortest and longest CITY names,
-- as well as their respective lengths (i.e.: number of characters in the name).
-- If there is more than one smallest or largest city,
-- choose the one that comes first when ordered alphabetically.

-- EXAMPLE:
-- For example, CITY has four entries: DEF, ABC, PQRS and WXY.
-- Output:
-- ABC 3
-- PQRS 4

(SELECT
    CITY,
    LENGTH(CITY) AS LENGTH_CHAR
FROM STATION
ORDER BY
    LENGTH_CHAR,
    CITY
LIMIT 1)
    
UNION ALL

(SELECT
    CITY,
    LENGTH(CITY) AS LENGTH_CHAR
FROM STATION
ORDER BY
    LENGTH_CHAR DESC,
    CITY
LIMIT 1)