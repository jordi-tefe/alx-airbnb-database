-- Step 1: Create the new partitioned Booking table

CREATE TABLE Booking_partitioned (
  booking_id UUID PRIMARY KEY,
  property_id UUID NOT NULL,
  user_id UUID NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_price DECIMAL NOT NULL,
  status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (start_date);

-- Step 2: Create partitions (monthly or yearly depending on dataset size)
-- Example: Quarterly partitions for a year

CREATE TABLE Booking_q1 PARTITION OF Booking_partitioned
  FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');

CREATE TABLE Booking_q2 PARTITION OF Booking_partitioned
  FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');

CREATE TABLE Booking_q3 PARTITION OF Booking_partitioned
  FOR VALUES FROM ('2024-07-01') TO ('2024-10-01');

CREATE TABLE Booking_q4 PARTITION OF Booking_partitioned
  FOR VALUES FROM ('2024-10-01') TO ('2025-01-01');

-- Add indexes if needed for query optimization
CREATE INDEX idx_booking_user_id ON Booking_partitioned(user_id);
CREATE INDEX idx_booking_property_id ON Booking_partitioned(property_id);
