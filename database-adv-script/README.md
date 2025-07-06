# Complex SQL Joins - Airbnb Clone

This file contains complex SQL queries involving INNER JOIN, LEFT JOIN, and FULL OUTER JOIN operations for the simulated Airbnb database.

## Files Included
- `joins_queries.sql`: Contains the required JOIN queries

## Queries Explained
1. **INNER JOIN**: Lists all bookings along with the users who made them.
2. **LEFT JOIN**: Lists all properties with their reviews, including those without reviews.
3. **FULL OUTER JOIN**: Combines users and bookings to show even unmatched records using UNION (since MySQL lacks FULL OUTER JOIN support).

## Usage
Run these queries in your MySQL client connected to the Airbnb database.

# Subqueries - Airbnb Clone

This file includes both non-correlated and correlated SQL subqueries to extract specific data insights from the Airbnb database.

## Files Included
- `subqueries.sql`: Contains subqueries for:
  - Properties with average rating > 4.0
  - Users with more than 3 bookings

## Queries Explained

1. **Non-Correlated Subquery**  
   - Finds all properties where the average of all their reviews is above 4.0.

2. **Correlated Subquery**  
   - Identifies users who have made more than 3 bookings by counting bookings per user dynamically.

## Usage
Execute these queries on a MySQL database with `Property`, `Review`, `User`, and `Booking` tables preloaded.

# Aggregations & Window Functions - Airbnb Clone

This file contains SQL queries demonstrating the use of aggregate functions and window functions to analyze the Airbnb clone database.

## Files Included
- `aggregations_and_window_functions.sql`: Contains queries for:
  - Counting total bookings per user
  - Ranking properties by number of bookings

## Queries Explained

1. **Total Bookings Per User**
   - Uses `COUNT` with `GROUP BY` to show how many bookings each user has made.

2. **Ranking Properties**
   - Uses `RANK()` window function to assign ranks to properties based on the number of bookings they have received.

## Usage
These queries can be executed on a MySQL/PostgreSQL database with the appropriate `User`, `Property`, and `Booking` tables.

Ensure joins are correct and indexes exist on foreign keys for performance.
