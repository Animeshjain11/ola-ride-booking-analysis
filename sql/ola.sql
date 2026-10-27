CREATE DATABASE IF NOT EXISTS OLA;
USE ola;
-- Retrieve all successful bookings.
CREATE View successful_bookings AS 
SELECT * FROM BOOKINGS
WHERE Booking_Status = 'Success';

SELECT * from successful_bookings;

-- Find the average ride distance for each vehicle type.
CREATE View average_ride_distanc_for_each_vehicle AS
SELECT Vehicle_Type,AVG(Ride_Distance) AS avg_distance
FROM BOOKINGS
GROUP BY Vehicle_Type;

SELECT * FROM average_ride_distanc_for_each_vehicle;


-- Get the total number of canceled rides by customers.
CREATE View canceled_rides_by_customers AS
SELECT COUNT(*) FROM BOOKINGS
WHERE Booking_Status = 'Canceled by Customer';

SELECT * FROM canceled_rides_by_customers;

-- List the top 5 customers who booked the highest number of rides.
CREATE View top_5_customers AS
SELECT Customer_ID,COUNT(Booking_ID) AS total_rides
FROM BOOKINGS
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

SELECT * FROM top_5_customers;

-- Get the number of rides canceled by drivers due to personal and car-related issues.
CREATE View rides_canceled_by_drivers_due_to_personal_and_car_related_issues AS
SELECT COUNT(*)FROM BOOKINGS
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * FROM rides_canceled_by_drivers_due_to_personal_and_car_related_issues;

-- Find the maximum and minimum driver ratings for Prime Sedan bookings.
CREATE View max_min_driver_ratings AS
SELECT MAX(Driver_Ratings) AS maximum_ratings,
MIN(Driver_Ratings) AS minimum_ratings FROM BOOKINGS
WHERE Vehicle_Type = 'Prime Sedan'; 

SELECT * from max_min_driver_ratings;
 
-- Retrieve all rides where payment was made using UPI.
CREATE View UPI_Payment AS
SELECT * FROM BOOKINGS
WHERE Payment_Method = 'UPI';

SELECT * FROM UPI_Payment;

-- Find the average customer rating per vehicle type.
CREATE View avg_customer_rating_per_vehicle_type AS
SELECT Vehicle_Type,AVG(Customer_Rating) AS avg_customer_rating
FROM BOOKINGS
GROUP BY Vehicle_Type;

SELECT * FROM avg_customer_rating_per_vehicle_type;

-- Calculate the total booking value of rides completed successfully.
CREATE View total_booking_value AS
SELECT SUM(Booking_Value) as total_booking_value
FROM BOOKINGS 
WHERE Booking_Status = 'Success';

SELECT * FROM total_booking_value;

-- List all incomplete rides along with the reason.
CREATE View Incomplete_Rides_Reason AS
SELECT Booking_ID ,Incomplete_Rides_Reason
FROM BOOKINGS
WHERE Incomplete_Rides = 'Yes';

SELECT * FROM Incomplete_Rides_Reason;