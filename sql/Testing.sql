CREATE TABLE Testing (
    TestID INT AUTO_INCREMENT PRIMARY KEY,
    BloodID INT NOT NULL,
    TestDate DATE NOT NULL,
    TestType VARCHAR(50) NOT NULL,
    Result VARCHAR(10) CHECK (Result IN ('Positive', 'Negative')),
    FOREIGN KEY (BloodID) REFERENCES BloodInventory(BloodID) ON DELETE CASCADE
);
