-- partitioning.sql
-- Create a partitioned version of the Booking table based on start_date

CREATE TABLE Booking_partitioned (
    booking_id CHAR(36) PRIMARY KEY,
    property_id CHAR(36),
    user_id CHAR(36),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2),
    status ENUM('pending','confirmed','canceled'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Test queries on the partitioned table
-- Example: fetching bookings in the first half of 2025
EXPLAIN ANALYZE
SELECT *
FROM Booking_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-06-30';
