CREATE TABLE Donor (
    DonorID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age > 0 AND Age < 100),
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    BloodType VARCHAR(5) NOT NULL,
    ContactNumber VARCHAR(15) UNIQUE NOT NULL,
    Address TEXT NOT NULL,
    HealthCheckStatus ENUM('Passed', 'Failed') NOT NULL
);


ALTER TABLE Donor 
ADD COLUMN LastDonationDate DATE DEFAULT NULL,
ADD COLUMN EligibilityStatus ENUM('Eligible', 'Not Eligible') DEFAULT 'Eligible',
ADD COLUMN BloodPressure VARCHAR(20) DEFAULT NULL,
ADD COLUMN HemoglobinLevel DECIMAL(5,2) DEFAULT NULL;
