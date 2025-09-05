CREATE UNIQUE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_user ON Booking(user_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_created_at ON Booking(created_at);
CREATE INDEX idx_property_host ON Property(host_id);
