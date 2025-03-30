CREATE TABLE Donor (
    DonorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age >= 18), -- Assuming only adults can donate blood
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    BloodType ENUM('A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-') NOT NULL,
    ContactNumber VARCHAR(15) UNIQUE NOT NULL,
    Address TEXT NOT NULL,
    HealthCheckStatus ENUM('Passed', 'Failed') NOT NULL
);