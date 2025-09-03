INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES 
('11111111-1111-1111-1111-111111111111', 'Adeola', 'Oriade', 'adeola@example.com', 'hashed_pw1', '08011111111', 'host', NOW()),
('22222222-2222-2222-2222-222222222222', 'Bolu', 'Adeagbo', 'bolu@example.com', 'hashed_pw2', '08022222222', 'guest', NOW());

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
('aaaa1111-aaaa-1111-aaaa-111111111111', '11111111-1111-1111-1111-111111111111',
 'Lekki Apartment', '2-bedroom flat near the beach', 'Lagos, Nigeria', 25000, NOW(), NOW()),
('bbbb2222-bbbb-2222-bbbb-222222222222', '11111111-1111-1111-1111-111111111111',
 'Abuja Condo', 'Luxury condo in city center', 'Abuja, Nigeria', 40000, NOW(), NOW());

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('cccc3333-cccc-3333-cccc-333333333333', 'aaaa1111-aaaa-1111-aaaa-111111111111',
 '22222222-2222-2222-2222-222222222222', '2025-09-10', '2025-09-15', 125000, 'confirmed', NOW()),
('dddd4444-dddd-4444-dddd-444444444444', 'bbbb2222-bbbb-2222-bbbb-222222222222',
 '22222222-2222-2222-2222-222222222222', '2025-10-05', '2025-10-10', 200000, 'pending', NOW());

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('eeee5555-eeee-5555-eeee-555555555555', 'cccc3333-cccc-3333-cccc-333333333333', 125000, NOW(), 'credit_card'),
('ffff6666-ffff-6666-ffff-666666666666', 'dddd4444-dddd-4444-dddd-444444444444', 200000, NOW(), 'paypal');

INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('gggg7777-gggg-7777-gggg-777777777777', 'aaaa1111-aaaa-1111-aaaa-111111111111',
 '22222222-2222-2222-2222-222222222222', 5, 'Amazing stay, very comfortable!', NOW()),
('hhhh8888-hhhh-8888-hhhh-888888888888', 'bbbb2222-bbbb-2222-bbbb-222222222222',
 '22222222-2222-2222-2222-222222222222', 4, 'Great location but a bit pricey.', NOW());

INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('iiii9999-iiii-9999-iiii-999999999999', '22222222-2222-2222-2222-222222222222',
 '11111111-1111-1111-1111-111111111111', 'Hi, is the apartment still available?', NOW()),
('jjjj0000-jjjj-0000-jjjj-000000000000', '11111111-1111-1111-1111-111111111111',
 '22222222-2222-2222-2222-222222222222', 'Yes, it’s available for your dates.', NOW());
