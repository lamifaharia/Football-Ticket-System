-- Q1: Champions League Available
SELECT match_id, fixture, base_ticket_price FROM Matches 
WHERE tournament_category = 'Champions League' AND match_status = 'Available';

-- Q2: LIKE/ILIKE for Names
SELECT user_id, full_name, email FROM Users 
WHERE full_name ILIKE 'Tanvir%' OR full_name ILIKE '%Haque%';

-- Q3: COALESCE for NULLs
SELECT booking_id, user_id, match_id, COALESCE(payment_status, 'Action Required') AS systematic_status 
FROM Bookings;

-- Q4: INNER JOIN
SELECT B.booking_id, U.full_name, M.fixture, B.total_cost
FROM Bookings B
INNER JOIN Users U ON B.user_id = U.user_id
INNER JOIN Matches M ON B.match_id = M.match_id;

-- Q5: LEFT JOIN (includes fans without tickets)
SELECT U.user_id, U.full_name, B.booking_id
FROM Users U
LEFT JOIN Bookings B ON U.user_id = B.user_id;

-- Q6: Subquery
SELECT booking_id, match_id, total_cost FROM Bookings 
WHERE total_cost > (SELECT AVG(total_cost) FROM Bookings);

-- Q7: Pagination (Offset 1 skips the top result)
SELECT match_id, fixture, base_ticket_price FROM Matches
ORDER BY base_ticket_price DESC
LIMIT 2 OFFSET 1;