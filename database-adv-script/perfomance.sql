-- Initial Query: retrieves all bookings with user, property, and payment details
SELECT b.booking_id,
       b.start_date,
       b.end_date,
       u.user_id,
       u.first_name,
       u.last_name,
       p.property_id,
       p.name AS property_name,
       pay.payment_id,
       pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;

-- Use EXPLAIN ANALYZE to see performance
EXPLAIN ANALYZE
SELECT b.booking_id,
       b.start_date,
       b.end_date,
       u.user_id,
       u.first_name,
       u.last_name,
       p.property_id,
       p.name AS property_name,
       pay.payment_id,
       pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;

-- Refactored Query Example (if indexes exist and unnecessary columns removed)
SELECT b.booking_id,
       b.start_date,
       b.end_date,
       u.first_name,
       u.last_name,
       p.name AS property_name
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
WHERE b.start_date >= '2025-01-01';
