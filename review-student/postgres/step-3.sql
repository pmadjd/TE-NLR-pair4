-- CAMPGROUND TABLE
-----------------------------------------------

-- select name and daily fee of all campgrounds
SELECT name, daily_fee 
FROM campground;

-- select name and daily fee of all campgrounds ordered by campground name
SELECT name, daily_fee
FROM campground
ORDER BY name;

-- select name, open from month, open to month, and daily fee of the campgrounds where daily fee is less than $100
-- money needs to be compared to other money. Datatypes must match for comparison. 

SELECT name, open_from_mm, open_to_mm, daily_fee
FROM campground
WHERE daily_fee < (
                   SELECT '100':: money -- cast 100 as money datatype in subquery.
                   )


-- select name and daily fee of the campgrounds where the campground is open all year long

SELECT name, daily_fee
FROM campground
WHERE open_from_mm LIKE '01' AND open_to_mm LIKE '12';


-- PARK TABLE
-----------------------------------------------

-- select name and description of all parks order by established date in descending order

-- select name and description of all parks in Ohio

-- select name and description of all parks NOT in Ohio

-- select the total number of visitors for all parks

-- select the average number of visitors for all parks


-- SITE TABLE
-----------------------------------------------

-- select all columns from site where utilities is true and order by max RV length with the largest coming first

-- select total number of sites that have utilities hook up


-- RESERVATION TABLE
-----------------------------------------------

-- select reservation id, site id, name, from date, to date of the reservations where the checkin date is between the first and last day of the current month (hard coded month is ok)

-- select all columns from reservation where name includes 'Reservation'

-- select the total number of reservations in the reservation table

-- select reservation id, site id, name of the reservations where site id is in the list 9, 20, 24, 45, 46

-- select the date and number of reservations for each date orderd by from_date in ascending order

