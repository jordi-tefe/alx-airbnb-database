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
EXPLAIN SELECT * FROM Booking WHERE user_id = '1234';
