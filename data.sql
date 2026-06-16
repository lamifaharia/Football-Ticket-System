INSERT INTO Users VALUES (1, 'Tanvir Rahman', 'tanvir@mail.com', 'Football Fan', '+8801711111111');
INSERT INTO Users VALUES (2, 'Asif Haque', 'asif@mail.com', 'Football Fan', '+8801722222222');
INSERT INTO Users VALUES (3, 'Sajjad Rahman', 'sajjad@mail.com', 'Ticket Manager', '+8801733333333');
INSERT INTO Users VALUES (4, 'Jannat Ara', 'jannat@mail.com', 'Football Fan', NULL);


INSERT INTO Matches VALUES (101, 'Real Madrid vs Barcelona', 150, 'Available');
INSERT INTO Matches VALUES (102, 'Man City vs Liverpool', 'Premier League', 120, 'Selling Fast');
INSERT INTO Matches VALUES (103, 'Bayern Munich vs PSG' 'Champions League', 130, 'Available');
INSERT INTO Matches VALUES (104, 'AC Milan vs Inter Milan' 'Serie A', 90, 'Sold Out');
INSERT INTO Matches VALUES (105, 'Juventus vs Roma', 'Serie A', 80, 'Available');

INSERT INTO Booking VALUES (501, 1, 101, 'A-12', 'Confirmed', 150);
INSERT INTO Booking VALUES (502, 1, 102, 'B-04', 'Confirmed', 120);
INSERT INTO Booking VALUES (503, 2, 101, 'A-13', 'Confirmed', 150);
INSERT INTO Booking VALUES (504, 2, 101, NULL, NULL, 150);
INSERT INTO Booking VALUES (505, 3, 102, 'C-20', 'Pending', 120);