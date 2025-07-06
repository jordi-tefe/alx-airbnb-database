-- Indexing foreign keys and search-critical columns

-- User Table
CREATE INDEX idx_user_email ON User(email);

-- Booking Table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- Property Table
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(pricepernight);

-- Payment Table
CREATE INDEX idx_payment_booking_id ON Payment(booking_id);
