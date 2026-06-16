CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100),
    role VARCHAR(50),
    phone_number VARCHAR(20)
);

CREATE TABLE Matches (
    match_id INT PRIMARY KEY,
    fixture VARCHAR(100),
    tournament_category VARCHAR(100),
    base_ticket_price INT,
    match_status VARCHAR(50)
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    user_id INT,
    match_id INT,
    seat_number VARCHAR(10),
    payment_status VARCHAR(20),
    total_cost INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);