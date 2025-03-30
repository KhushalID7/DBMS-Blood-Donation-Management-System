CREATE TABLE DonationEvent (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    EventDate DATE NOT NULL,
    Organizer VARCHAR(255) NOT NULL
);
