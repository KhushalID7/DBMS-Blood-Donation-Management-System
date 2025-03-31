CREATE TABLE Blood (
    BloodID INT AUTO_INCREMENT PRIMARY KEY,
    DonorID INT NOT NULL,
    BloodType VARCHAR(5) NOT NULL,
    Quantity INT CHECK (Quantity > 0), 
    DateCollected DATE NOT NULL,
    ExpirationDate DATE NOT NULL,
    Status ENUM('Available', 'Used', 'Expired') NOT NULL DEFAULT 'Available',
    FOREIGN KEY (DonorID) REFERENCES Donor(DonorID) ON DELETE CASCADE
);


ALTER TABLE Blood 
ADD COLUMN StorageUnit VARCHAR(50) DEFAULT NULL,
ADD COLUMN Barcode VARCHAR(20) UNIQUE NOT NULL;
