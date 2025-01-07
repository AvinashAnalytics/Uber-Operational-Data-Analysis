# Uber Operational Data Analysis - SQL Capstone Project

## About the Project

This is a **SQL-based capstone project** that analyzes **Uber’s operational data** to uncover key insights and propose optimizations across several operational aspects. The analysis focuses on evaluating **city-level performance**, detecting **revenue leakage**, understanding **driver performance**, investigating **cancellation patterns**, and more. The goal is to help Uber optimize its operational decisions based on the data and insights generated through SQL queries.

In this project, various **SQL scripts** have been developed to:
- Analyze **ride data**, **payment trends**, **driver performance**, and **city-level dynamics**.
- Implement **views**, **indexes**, and **triggers** to optimize performance and streamline reporting.

The project was developed using **SQL** and involves:
- **Data Cleaning**: Fixing issues such as missing values, duplicates, and ensuring consistency across tables.
- **SQL Queries**: Performing in-depth analysis using joins, groupings, aggregations, and subqueries.
- **Database Optimization**: Using **indexes**, **views**, and **triggers** to enhance query performance and data integrity.

## Objectives of the Project

- **City-Level Performance Optimization**: Focus on cities with high ride demand, driver performance issues, and high cancellation rates.
- **Revenue Leakage Detection**: Identify potential discrepancies in fare calculations and missing payments.
- **Driver Performance Analysis**: Evaluate driver performance metrics such as average rating, ride acceptance rate, and total earnings.
- **Cancellation Analysis**: Investigate cancellation patterns across cities, ride categories, and times of the day.
- **Optimization Solutions**: Improve SQL query performance with **indexes** and **views**.

## Key SQL Scripts

Below are the key SQL scripts included in this project:

### 1. **City-Level Performance Optimization**
This query assesses which cities need more driver recruitment based on performance metrics such as demand, cancellations, and driver ratings.
- [city_performance.sql](./sql/queries/city_performance.sql)

### 2. **Revenue Leakage Detection**
Detect discrepancies in the payment system and identify rides with missing payments or fare discrepancies.
- [revenue_leakage.sql](./sql/queries/revenue_leakage.sql)

### 3. **Driver Performance Analysis**
Evaluate the efficiency of drivers based on their total earnings, ride acceptance rates, and ratings.
- [driver_performance.sql](./sql/queries/driver_performance.sql)

### 4. **Cancellation Patterns Analysis**
Analyze cancellation trends across cities and understand their impact on revenue.
- [cancellation_analysis.sql](./sql/queries/cancellation_analysis.sql)

### 5. **Seasonal Fare Variations**
Understand how fares vary across different seasons and identify any significant trends or anomalies.
- [seasonal_fare_variations.sql](./sql/queries/seasonal_fare_variations.sql)

### 6. **Driver Distribution Across Cities**
Examine how drivers are distributed across different cities, along with their performance metrics.
- [driver_distribution.sql](./sql/queries/driver_distribution.sql)

## Database Optimization

- **Indexes**: Performance improvements were made by adding indexes to frequently queried columns. For example, indexing `ride_date` and `payment_method` columns for faster querying.
  - [index_on_ride_date.sql](./sql/indexes/index_on_ride_date.sql)
  
- **Views**: Complex queries have been encapsulated in views to simplify reporting and improve query readability.
  - [driver_performance_view.sql](./sql/views/driver_performance_view.sql)

- **Triggers**: Implemented triggers for auditing and tracking ride status changes.
  - [ride_status_trigger.sql](./sql/triggers/ride_status_trigger.sql)

## Data Sources

The following datasets are used in the analysis:
- **ridesdataset.csv**: Contains information on individual rides (e.g., ride ID, start city, fare, distance, rating).
- **paymentdataset.csv**: Includes data related to payments (e.g., transaction status, payment method, driver earnings).
- **driverdataset.csv**: Contains data on drivers (e.g., driver rating, total rides, driver status).
- **citydataset.csv**: Includes data on cities where Uber operates (e.g., city name, population, number of rides).

## About Me

Hi, I’m **Avinash Rai**, a **fresher** aspiring to work as a Data Analyst. My skills are centered around **SQL**, data manipulation, and data analysis. This project demonstrates my ability to work with large datasets, draw actionable insights, and implement optimizations in a database environment. 

I'm passionate about solving real-world problems using data and leveraging my SQL expertise to drive business improvements.

## Best Quote:
_"Data is the new oil. Just like oil, it can either be extracted for valuable insights or be left untapped."_

## License

This project is open-source and available under the [MIT License](LICENSE).
