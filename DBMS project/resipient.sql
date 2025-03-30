CREATE TABLE Recipient (
    RecipientID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT CHECK (Age > 0 AND Age < 100),
    Gender ENUM('Male', 'Female', 'Other') NOT NULL,
    BloodTypeNeeded VARCHAR(5) NOT NULL,
    ContactNumber VARCHAR(15) UNIQUE NOT NULL,
    DoctorApproval ENUM('Yes', 'No') NOT NULL
);