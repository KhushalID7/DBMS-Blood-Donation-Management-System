CREATE TABLE Distribution (
    DistributionID INT AUTO_INCREMENT PRIMARY KEY,
    BloodID INT NOT NULL,
    RecipientID INT NOT NULL,
    DateDistributed DATE NOT NULL,
    QuantityDistributed INT CHECK (QuantityDistributed > 0), 
    HandledBy INT NOT NULL,
    FOREIGN KEY (BloodID) REFERENCES BloodInventory(BloodID) ON DELETE CASCADE,
    FOREIGN KEY (RecipientID) REFERENCES Recipients(RecipientID) ON DELETE CASCADE,
    FOREIGN KEY (HandledBy) REFERENCES Staff(StaffID) ON DELETE SET NULL
);
