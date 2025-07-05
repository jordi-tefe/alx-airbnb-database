
-- Sample Users
INSERT INTO User VALUES
('1a', 'Alice', 'Smith', 'alice@example.com', 'hash1', '1234567890', 'guest', CURRENT_TIMESTAMP),
('1b', 'Bob', 'Jones', 'bob@example.com', 'hash2', NULL, 'host', CURRENT_TIMESTAMP);

-- Sample Properties
INSERT INTO Property VALUES
('2a', '1b', 'Modern Apartment', 'Close to city center', 'Addis Ababa', 45.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Sample Bookings
INSERT INTO Booking VALUES
('3a', '2a', '1a', '2025-07-01', '2025-07-05', 180.00, 'confirmed', CURRENT_TIMESTAMP);

-- Sample Payments
INSERT INTO Payment VALUES
('4a', '3a', 180.00, CURRENT_TIMESTAMP, 'credit_card');

-- Sample Reviews
INSERT INTO Review VALUES
('5a', '2a', '1a', 5, 'Great stay!', CURRENT_TIMESTAMP);

-- Sample Messages
INSERT INTO Message VALUES
('6a', '1a', '1b', 'Thank you for hosting!', CURRENT_TIMESTAMP);
