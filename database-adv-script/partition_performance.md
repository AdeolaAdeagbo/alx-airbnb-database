# Partitioning Performance Report

## Objective
Partition the Booking table by the `start_date` column to optimize query performance on large datasets.

## Approach
- Implemented **range partitioning** based on the year of `start_date`.
- Created separate partitions for 2024, 2025, and a default partition for all other years.

## Observations
- Queries with date ranges now scan only the relevant partitions instead of the entire table.
- For example, fetching bookings for January–June 2025 only scanned the `p2025` partition, reducing rows scanned significantly.
- Partitioning improved performance for SELECT queries filtering by `start_date`.

## Limitations
- Some operations, like foreign key constraints across partitions, are limited in MySQL.
- Writes to the table are slightly more complex, but read-heavy queries benefit the most.
