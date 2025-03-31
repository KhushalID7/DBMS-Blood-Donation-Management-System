CREATE TABLE Distribution (
    DistributionID INT AUTO_INCREMENT PRIMARY KEY,
    BloodID INT NOT NULL,
    RecipientID INT NOT NULL,
    DateDistributed DATE NOT NULL,
    QuantityDistributed INT CHECK (QuantityDistributed > 0),
    HandledBy INT DEFAULT NULL,  
    FOREIGN KEY (BloodID) REFERENCES Blood(BloodID) ON DELETE CASCADE,
    FOREIGN KEY (RecipientID) REFERENCES Recipient(RecipientID) ON DELETE CASCADE,
    FOREIGN KEY (HandledBy) REFERENCES Staff(StaffID) ON DELETE SET NULL
);
ALTER TABLE Distribution 
ADD COLUMN Purpose VARCHAR(255) DEFAULT NULL,
ADD COLUMN ApprovedBy INT NULL,
ADD FOREIGN KEY (ApprovedBy) REFERENCES Staff(StaffID) ON DELETE SET NULL;
