SELECT user_id, COUNT(*) AS TOTAL_BOOKINGS
FROM Booking
GROUP BY user_id;

SELECT property_id, 
       COUNT(*) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(*) DESC) AS property_rank
FROM Booking
GROUP BY property_id;
