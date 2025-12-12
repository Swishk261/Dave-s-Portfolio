# Hotel Operations Analysis (SQL)

## 📌 Context
Hotels generate large volumes of operational data — bookings, check-ins, room usage, and service requests. This project focuses on cleaning and analyzing hotel operations data to uncover inefficiencies and highlight opportunities for improved resource allocation.

## 🛠️ Techniques Used
- **Data Cleaning:** Removed duplicate booking records, standardized room categories
- **Joins:** Combined booking data with customer and room tables
- **Filtering:** Segmented by room type, booking source, and customer demographics
- **Aggregation:** Calculated occupancy rates, average length of stay, and revenue per room

## 📊 Process
1. **Data Cleaning**
   - Removed duplicate booking IDs
   - Standardized inconsistent room type labels (e.g., “Deluxe”, “DLX” → “Deluxe”)

2. **Joins**
   - Linked `bookings` table with `customers` and `rooms` to enrich operational insights

3. **Filtering**
   - Focused on active bookings within the last 12 months
   - Segmented by booking source (direct vs. online travel agency)

4. **Aggregation**
   - Calculated occupancy rates per month
   - Computed average revenue per room type
   - Identified peak booking periods

## 📈 Results
- **Occupancy Trends:** Revealed seasonal peaks in summer months with underutilization in winter  
- **Revenue Insights:** Deluxe rooms generated 40% higher revenue per night compared to standard rooms  
- **Operational Efficiency:** Online travel agency bookings had higher cancellation rates, impacting revenue predictability  

## 🎯 Teaching Takeaway
This case study demonstrates how **cleaning and joining hotel operations data** can reveal actionable insights for resource planning, pricing strategies, and marketing focus.

---

## 📷 Visuals

Below are key SQL queries used in this project:

![Data Cleaning](https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/hotel-operations-analysis-code-1.PNG?raw=1)  
*Data cleaning: Removing duplicate booking records and standardizing room categories*

![Table Joins](https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/hotel-operations-analysis-code-2.PNG?raw=1)  
*Joining bookings with customer and room tables to enrich operational insights*

![Filtering Window](https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/hotel-operations-analysis-code-3.PNG?raw=1)  
*Filtering for active bookings within the last 12 months and segmenting by booking source*

![Aggregation and Metrics](https://github.com/Swishk261/Dave-s-Portfolio/blob/main/assets/hotel-operations-analysis-code-4.PNG?raw=1)  
*Calculating occupancy rates, average length of stay, and revenue per room type*

---

## 🔗 Links
- SQL Script: [`hotel_operations_analysis.sql`](hotel_operations_analysis.sql)

<a href="../../README.md">Back to homepage</a>
