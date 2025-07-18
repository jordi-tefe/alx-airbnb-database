-- 1. INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT 
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM 
    Booking b
INNER JOIN 
    User u ON b.user_id = u.user_id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews (including properties with no reviews)
SELECT 
    p.property_id,
    p.name AS property_name,
    r.review_id,
    r.rating,
    r.comment
FROM 
    Property p
LEFT JOIN 
    Review r ON p.property_id = r.property_id;
ORDER BY p.name;
-- 3. FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
-- Note: MySQL does not support FULL OUTER JOIN directly. You can simulate it using UNION.
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id
FROM 
    User u
LEFT JOIN 
    Booking b ON u.user_id = b.user_id

UNION

SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    b.booking_id,
    b.property_id
FROM 
    Booking b
LEFT JOIN 
    User u ON b.user_id = u.user_id;
