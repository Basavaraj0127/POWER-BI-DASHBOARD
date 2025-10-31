-- OLA Data Analyst Project SQL Queries
-- Author: Basavaraj Chakalabbi

-- Create database
CREATE DATABASE Ola;
USE Ola;

-- 1️⃣ Retrieve all successful bookings
CREATE VIEW Successful_Bookings AS
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;

-- 2️⃣ Average ride distance for each vehicle type
CREATE VIEW ride_distance_for_each_vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM ride_distance_for_each_vehicle;

-- 3️⃣ Total cancelled rides by customers
CREATE VIEW cancelled_rides_by_customers AS
SELECT COUNT(*) AS cancelled_by_customer
FROM bookings
WHERE Booking_Status = 'Cancelled by Customer';

SELECT * FROM cancelled_rides_by_customers;

-- 4️⃣ Top 5 customers with highest ride counts
CREATE VIEW Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

SELECT * FROM Top_5_Customers;

-- 5️⃣ Rides cancelled by drivers due to personal & car-related issues
CREATE VIEW Rides_cancelled_by_Drivers_P_C_Issues AS
SELECT COUNT(*) AS cancelled_driver_personal
FROM bookings
WHERE Cancel_Reason_Driver = 'Personal & Car related issue';

SELECT * FROM Rides_cancelled_by_Drivers_P_C_Issues;

-- 6️⃣ Max & Min driver ratings for Prime Sedan bookings
CREATE VIEW Max_Min_Driver_Rating AS
SELECT MAX(Driver_Ratings) AS max_rating,
       MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

SELECT * FROM Max_Min_Driver_Rating;

-- 7️⃣ Retrieve all UPI payments
CREATE VIEW UPI_Payment AS
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';

SELECT * FROM UPI_Payment;

-- 8️⃣ Average customer rating per vehicle type
CREATE VIEW AVG_Cust_Rating AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

SELECT * FROM AVG_Cust_Rating;

-- 9️⃣ Total booking value for successful rides
CREATE VIEW total_successful_ride_value AS
SELECT SUM(Booking_Value) AS total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';

SELECT * FROM total_successful_ride_value;

-- 🔟 List incomplete rides with reasons
CREATE VIEW Incomplete_Rides_Reason AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';

SELECT * FROM Incomplete_Rides_Reason;
