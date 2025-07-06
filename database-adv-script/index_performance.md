# Index Performance Report - Airbnb Clone

## Objective
Improve the query performance by indexing frequently accessed columns involved in JOINs, WHERE clauses, and ORDER BY operations.

---

## Indexed Columns

| Table      | Column            | Reason                        |
|------------|-------------------|-------------------------------|
| User       | email             | Used for login & search       |
| Booking    | user_id           | JOIN with User                |
| Booking    | property_id       | JOIN with Property            |
| Booking    | start_date        | Date-range filtering          |
| Property   | location          | Frequently used in search     |
| Property   | pricepernight     | Sorting/filtering by price    |
| Payment    | booking_id        | JOIN with Booking             |

---

## Performance Comparison

### Example Query (Before Indexing)
```sql

# Indexing for Query Optimization

## Indexed Columns:
- `User.email`: Frequently used for login and user lookup.
- `Booking.user_id`: Used in JOINs and WHERE clauses to retrieve user bookings.
- `Property.location`: Commonly filtered in search functionality.

## Performance Measurement
We used `EXPLAIN ANALYZE` to compare query execution before and after indexing.
This helped us verify that the new indexes reduce query cost and improve performance on large datasets.

EXPLAIN SELECT * FROM Booking WHERE user_id = '1234';
