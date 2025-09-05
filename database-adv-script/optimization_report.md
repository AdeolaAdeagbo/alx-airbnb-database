# Optimization Report for Complex Queries

## Objective
Refactor complex queries retrieving bookings, user, property, and payment details to improve performance.

## Initial Query
- Joins Booking, User, Property, and Payment tables.
- Retrieves all columns.
- Execution analyzed with EXPLAIN ANALYZE.

## Performance Issues
- Selecting all columns increases data size and memory usage.
- Left joining Payment adds overhead for bookings without payments.
- Lack of WHERE clause results in full table scans.

## Refactored Query
- Selected only necessary columns.
- Added filtering with WHERE clause to reduce rows scanned.
- Relies on existing indexes on `Booking(user_id)`, `Booking(property_id)`.

## Observations
- EXPLAIN ANALYZE shows fewer rows scanned after refactoring.
- Query execution time decreased significantly.
- Proper indexing and limiting columns/rows are crucial for performance optimization.
