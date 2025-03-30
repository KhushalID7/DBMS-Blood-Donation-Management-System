CREATE TABLE Blood (
    BloodID INT PRIMARY KEY AUTO_INCREMENT,
    DonorID INT,
    BloodType ENUM('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-') NOT NULL,
    Quantity INT CHECK (Quantity > 0),  -- Ensures only positive values
    DateCollected DATE NOT NULL,
    ExpirationDate DATE NOT NULL,
    Status ENUM('Available', 'Used', 'Expired') NOT NULL,
    FOREIGN KEY (DonorID) REFERENCES Donor(DonorID) ON DELETE CASCADE
);