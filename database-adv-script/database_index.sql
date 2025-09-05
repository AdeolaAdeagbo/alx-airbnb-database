CREATE UNIQUE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_created_at ON Booking(created_at);
CREATE INDEX idx_property_host ON Property(host_id);

-- Measure query performance before indexing
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'some-uuid';

-- Measure query performance after indexing
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 'some-uuid';

-- Another example: performance check for property_id
EXPLAIN ANALYZE SELECT * FROM Booking WHERE property_id = 'some-uuid';
