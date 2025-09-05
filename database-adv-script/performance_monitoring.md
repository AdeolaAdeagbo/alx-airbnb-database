Performance Monitoring and Query Refinement
Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

Step 1: Monitor Query Performance

Even with a small dataset, we can demonstrate monitoring techniques:

-- Analyze query execution for a specific user
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE user_id = 1;

-- Using profiling to monitor query performance
SET profiling = 1;
SELECT * FROM Booking
WHERE start_date >= '2025-01-01';
SHOW PROFILES;


Note: On a tiny dataset, execution is almost instant, but this demonstrates correct methodology.

Step 2: Identify Bottlenecks

Potential performance issues:

Full table scans on frequently queried columns.

Joins on unindexed columns.

Sorting (ORDER BY) large datasets without indexes.

Step 3: Suggested Improvements

Create Indexes on High-Usage Columns

CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_property_city ON Property(city);


Refactor Queries for Efficiency

SELECT user_id, property_id, start_date
FROM Booking
WHERE start_date >= '2025-01-01';


Partition Large Tables (conceptual for real-world usage)

-- Example for partitioning Booking table by date
CREATE TABLE Booking_2025 PARTITION OF Booking
FOR VALUES FROM ('2025-01-01') TO ('2025-12-31');

Step 4: Expected Results
Query	Before	After
SELECT * FROM Booking WHERE user_id = 1	Full table scan	Indexed lookup
SELECT * FROM Booking WHERE start_date >= '2025-01-01'	Full scan	Partitioned scan
Step 5: Conclusion

Although the current dataset is small, the above strategies demonstrate:

Query monitoring with EXPLAIN ANALYZE or SHOW PROFILE.

Identification of performance bottlenecks.

Use of indexing and partitioning to optimize queries.

Preparation for scaling to large datasets in real-world applications.