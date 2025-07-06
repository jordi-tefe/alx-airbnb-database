-- Unoptimized complex query
SELECT 
  u.user_id,
  u.first_name,
  u.email,
  b.booking_id,
  b.start_date,
  b.end_date,
  b.status,
  p.property_id,
  p.name AS property_name,
  p.pricepernight,
  pay.payment_id,
  pay.amount,
  pay.payment_method
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON pay.booking_id = b.booking_id;
