# Optimization Report - Complex Query on Airbnb Database

## 🧪 Initial Query
The initial query fetched all booking details along with user, property, and payment information using multiple joins.

```sql
SELECT ...
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id;
