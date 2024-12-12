-- SQL - Using MySQL Database:

-- Dataset Used CSV file imported  (12 months combined): LINK

-- Performed Queries: Just some sample queries. More queries can be found in the Google Docs file.

-- Count the number of rides by type of user (member or casual):
SELECT member_casual, count(*) AS ride_count
FROM cyclistic_bike_riders."norberts_case_study_12_month_data_combined"
group by member_casual;

-- Output:
-- Member 21371 ride count
-- Casual 23442 ride count






-- Find the average ride duration for each type of bike:
SELECT rideable_type, AVG(TIME_TO_SEC(STR_TO_DATE(ride_length, '%H:%i:%s'))) / 60 AS avg_duration_minutes
FROM cyclistic_bike_riders."norberts_case_study_12_month_data_combined"
group by rideable_type;

-- Output:
-- Classic_bike 18.72032275
-- Casual_bike 18.88506057
-- Docked_bike 54.35701826


-- Get the total number of rides for each day of the week
SELECT day_of_week, COUNT(*) AS total_rides
FROM cyclistic_bike_riders."norberts_case_study_12_month_data_combined"
group by day_of_week
order by FIELD(day_of_week, 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday');

-- Output:
-- Sunday 6599
-- Monday 5965
-- Tuesday 6135
-- Wednesday 5857
-- Thursday 5774
-- Friday 6590
-- Saturday 7893



-- See more SQL queries in the Google Data Analytics Case Study 2024 Google Docs file.

