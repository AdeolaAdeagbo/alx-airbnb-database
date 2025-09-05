# Indexing for Airbnb Database Optimization

## Objective
Improve query performance by creating indexes on high-usage columns in User, Booking, and Property tables.

## High-Usage Columns Selected
- `User(email)` → frequently used for lookups, unique constraint
- `Booking(user_id)` → joins with User table
- `Booking(property_id)` → joins with Property table
- `Booking(created_at)` → used for sorting by date
- `Property(host_id)` → joins with User table

## SQL Commands
```sql
CREATE UNIQUE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_created_at ON Booking(created_at);
CREATE INDEX idx_property_host ON Property(host_id);
Testing Query Performance
Before indexing:

sql
Copy code
EXPLAIN SELECT * FROM Booking WHERE user_id = '550e8400-e29b-41d4-a716-446655440000';
→ Full table scan, slow for large datasets

After indexing:

sql
Copy code
EXPLAIN SELECT * FROM Booking WHERE user_id = '550e8400-e29b-41d4-a716-446655440000';
→ Index used, fewer rows scanned, faster execution

Observations
Indexes drastically reduce the number of rows scanned for frequent queries.

Over-indexing can slow down INSERT/UPDATE/DELETE, so only high-usage columns were indexed.
