-- Total number of bookings per user
SELECT user_id, COUNT(*) AS total_bookings
FROM Booking
GROUP BY user_id;


-- Rank properties based on total bookings using RANK()
SELECT property_id, 
       COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM Booking
GROUP BY property_id;


-- Rank properties based on total bookings using ROW_NUMBER()
SELECT property_id, 
       COUNT(*) AS total_bookings,
       ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS property_row_number
FROM Booking
GROUP BY property_id;

