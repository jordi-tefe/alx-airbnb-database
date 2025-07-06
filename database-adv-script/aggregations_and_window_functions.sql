-- 1. Aggregation: Total number of bookings made by each user
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM 
    User u
LEFT JOIN 
    Booking b ON u.user_id = b.user_id
GROUP BY 
    u.user_id, u.first_name, u.last_name;

-- 2. Window Function: Rank properties by total number of bookings
SELECT 
    p.property_id,
    p.name AS property_name,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS property_rank
FROM 
    Property p
LEFT JOIN 
    Booking b ON p.property_id = b.property_id
GROUP BY 
    p.property_id, p.name;
-- Query 1: Count total bookings per user
SELECT
    user_id,
    COUNT(booking_id) AS total_bookings
FROM Booking
GROUP BY user_id;

-- Query 2: Rank properties based on total bookings using ROW_NUMBER()
SELECT
    property_id,
    COUNT(booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(booking_id) DESC) AS booking_rank
FROM Booking
GROUP BY property_id
ORDER BY booking_rank;

