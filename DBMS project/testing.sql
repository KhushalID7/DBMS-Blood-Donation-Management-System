CREATE TABLE Testing (
    TestID INT AUTO_INCREMENT PRIMARY KEY,
    BloodID INT NOT NULL,
    TestDate DATE NOT NULL,
    TestType VARCHAR(50) NOT NULL,
    Result ENUM('Positive', 'Negative') NOT NULL,
    FOREIGN KEY (BloodID) REFERENCES Blood(BloodID) ON DELETE CASCADE
);