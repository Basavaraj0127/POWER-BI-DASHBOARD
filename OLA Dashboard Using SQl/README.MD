<p align="center">
  <img src="https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/raw/main/OLA%20Dashboard%20Using%20SQl/Dashboard/ola_dashboard_banner.png" alt="OLA Power BI Dashboard Banner" width="100%">
</p>

<h1 align="center">🚖 OLA Data Analytics Dashboard</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=Power%20BI&logoColor=black" alt="Power BI Badge">
  <img src="https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=MySQL&logoColor=white" alt="SQL Badge">
  <img src="https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=Microsoft-Excel&logoColor=white" alt="Excel Badge">
  <img src="https://img.shields.io/badge/DAX-000000?style=for-the-badge&logo=Microsoft&logoColor=white" alt="DAX Badge">
  <img src="https://img.shields.io/badge/Data%20Analysis-4CAF50?style=for-the-badge&logo=Databricks&logoColor=white" alt="Data Analysis Badge">
</p>

---

## 📊 Project Overview

The **OLA Data Analytics Dashboard** is an end-to-end business intelligence project built using **Power BI**, **SQL**, and **Excel**.  
It analyzes July 2024 OLA booking data to uncover insights related to **ride volumes, cancellations, revenues, customer ratings**, and **vehicle performance**.

🗓️ **Duration Analyzed:** 01 July 2024 – 31 July 2024  
🛠️ **Tools Used:** Power BI, SQL, Excel, DAX  

---

## ❓ Problem Statement

The ride-hailing company **OLA** faces challenges in understanding trends in **ride volumes, cancellations, revenue generation, and customer satisfaction** across different vehicle categories.  
Despite high booking demand, a large percentage of rides are **canceled** by either drivers or customers, leading to revenue loss and poor service reliability.

Additionally, variations in payment methods, average ride distances, and customer ratings make it difficult for management to **pinpoint areas for improvement**.

This project aims to:
- Identify **key operational challenges** and **cancellation patterns**.  
- Analyze **revenue generation and customer behavior**.  
- Improve **driver performance tracking** through data insights.  
- Build a **Power BI dashboard** to visualize KPIs for better decision-making.

---

## 📸 Dashboard Preview

<p align="center">
  <img src="https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/raw/main/OLA%20Dashboard%20Using%20SQl/Dashboard/dashboard_overview.png" width="45%" />
  <img src="https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/raw/main/OLA%20Dashboard%20Using%20SQl/Dashboard/revenue_dashboard.png" width="45%" />
</p>
<p align="center">
  <img src="https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/raw/main/OLA%20Dashboard%20Using%20SQl/Dashboard/cancellation_dashboard.png" width="45%" />
  <img src="https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/raw/main/OLA%20Dashboard%20Using%20SQl/Dashboard/ratings_dashboard.png" width="45%" />
</p>
<p align="center">
  <img src="https://github.com/Basavaraj0127/POWER-BI-DASHBOARD/raw/main/OLA%20Dashboard%20Using%20SQl/Dashboard/vehicle_analysis_dashboard.png" width="90%" />
</p>

---

*… (rest of README remains unchanged) …*



## 🟢 Overall Dashboard Insights

- **Total Bookings:** `103,024`  
- **Total Booking Value:** `₹35 Million`  
- **Booking Success Rate:** `62.09%` successful rides  

**Booking Status Breakdown:**
- ✅ Success – 62.09%  
- ❌ Canceled by Driver – 17.89%  
- 🚫 Canceled by Customer – 10.19%  
- 🕵️ Driver Not Found – 9.83%

📈 *Insight:* Nearly 38% of rides result in cancellations or driver unavailability — a key opportunity to optimize allocation and communication.

---

## 🚗 Vehicle Type Analysis

| Vehicle Type | Total Booking Value | Successful Value | Avg. Distance (km) | Total Distance |
|---------------|----------------------|------------------|--------------------|----------------|
| Prime Sedan | 4.24M | 2.68M | 24.92 | 120K |
| Prime SUV | 4.12M | 2.53M | 24.86 | 116K |
| Prime Plus | 4.14M | 2.62M | 24.80 | 118K |
| Mini | 4.13M | 2.53M | 24.90 | 118K |
| Auto | 4.11M | 2.56M | 10.07 | 47K |
| Bike | 4.21M | 2.56M | 24.75 | 117K |
| E-Bike | 4.22M | 2.61M | 25.13 | 119K |

📊 *Insight:*  
- **Prime Sedan** leads in total revenue.  
- **E-Bike** has the longest average ride distance (25.13 km).  
- **Auto** dominates short-distance travel.

---

## 💰 Revenue Insights

- **Total Booking Value:** ₹35M  
- **Revenue by Payment Method:**  
  - 💵 **Cash:** ₹20M  
  - 💳 **UPI:** ₹15M  
  - 💸 **Cards:** Minimal contribution  

**Top 5 Customers (by Booking Value):**

| Customer ID | Booking Value |
|--------------|----------------|
| CID308763 | 6281 |
| CID353074 | 6110 |
| CID734557 | 6177 |
| CID785112 | 8025 |
| CID836942 | 6019 |

💡 *Insight:* UPI payments show an upward trend, but cash remains dominant.

---

## ❌ Cancellation Insights

| Metric | Count |
|--------|--------|
| Total Bookings | 103,024 |
| Successful Bookings | 63,967 |
| Canceled Bookings | 28,933 |

### 👥 Cancellations by Customers
- Driver not moving towards pickup – 30.24%  
- Driver asked to cancel – 25.43%  
- Change of plans – 19.82%  
- A/C not working – 14.93%  
- Wrong address – 9.57%

### 🚗 Cancellations by Drivers
- Personal / Car issues – 35.49%  
- Customer-related issue – 29.36%  
- Customer was sick – 19.82%  
- More passengers – 15.32%

💡 *Insight:*  
Driver and customer communication breakdowns are primary reasons behind cancellations.

---

## ⭐ Ratings Overview

| Vehicle Type | Driver Rating | Customer Rating |
|---------------|---------------|----------------|
| Prime Sedan | 3.99 | 4.00 |
| Prime SUV | 4.01 | 4.00 |
| Prime Plus | 4.00 | 4.01 |
| Mini | 3.99 | 4.00 |
| Auto | 4.00 | 4.00 |
| Bike | 3.98 | 4.00 |
| E-Bike | 4.01 | 3.99 |

💡 *Insight:*  
- Average ratings remain around **4.0**, reflecting good service quality.  
- **Prime SUV** and **E-Bike** slightly outperform others in driver satisfaction.

---

## 🧠 Key Takeaways

✅ Focus on reducing **driver and customer cancellations**.  
✅ Promote **digital payments (UPI)** through offers.  
✅ Maintain **high-performing segments** like Prime Sedan & E-Bike.  
✅ Use **ratings data** for driver performance monitoring.  
✅ Optimize resource allocation during peak demand days.

---

## 🧾 SQL Queries Used

```sql
-- Create database
CREATE DATABASE Ola;
USE Ola;

-- Retrieve all successful bookings
CREATE VIEW Successful_Bookings AS
SELECT * FROM bookings
WHERE Booking_Status = 'Success';

-- Average ride distance by vehicle type
CREATE VIEW ride_distance_for_each_vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;

-- Cancelled rides by customers
CREATE VIEW cancelled_rides_by_customers AS
SELECT COUNT(*) AS cancelled_by_customer
FROM bookings
WHERE Booking_Status = 'Cancelled by Customer';

-- Top 5 customers
CREATE VIEW Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

-- Driver cancellation due to personal issues
CREATE VIEW Rides_cancelled_by_Drivers_P_C_Issues AS
SELECT COUNT(*) AS cancelled_driver_personal
FROM bookings
WHERE Cancel_Reason_Driver = 'Personal & Car related issue';

-- Max & Min driver ratings for Prime Sedan
CREATE VIEW Max_Min_Driver_Rating AS
SELECT MAX(Driver_Ratings) AS max_rating,
       MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

-- Retrieve all UPI payments
CREATE VIEW UPI_Payment AS
SELECT * FROM bookings
WHERE Payment_Method = 'UPI';

-- Average customer rating by vehicle type
CREATE VIEW AVG_Cust_Rating AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM bookings
GROUP BY Vehicle_Type;

-- Total booking value for successful rides
CREATE VIEW total_successful_ride_value AS
SELECT SUM(Booking_Value) AS total_successful_ride_value
FROM bookings
WHERE Booking_Status = 'Success';

-- Incomplete rides with reasons
CREATE VIEW Incomplete_Rides_Reason AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';
