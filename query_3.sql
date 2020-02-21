--SELECT SERVERPROPERTY ('IsPolybaseInstalled') AS IsPolybaseInstalled;

-- SELECT * from HumanResources.Department

--CREATE DATABASE sandbox

USE [sandbox]
GO

CREATE TABLE tblGender
(
    ID INT NOT NULL PRIMARY KEY,
    Gender NVARCHAR(50) NOT NULL
)

CREATE TABLE tblAge
(
    CustomerID INT NOT NULL PRIMARY KEY,
    Age INT NOT NULL
)

CREATE TABLE tblPerson
(
    ID INT NOT NULL PRIMARY KEY,
    PersonName NVARCHAR(40),
    Email NVARCHAR(40),
    GenderID INT NOT NULL
)

INSERT INTO tblPerson
    (ID, PersonName, Email, GenderID)
VALUES
    --(7, 'Rich', 'r@r.com',1),
    --(1, 'John', 'j@j.com', 1),
    --(2, 'Mary', 'm@m.com', 2),
    --(3, 'Simon', 's@s.com', 1),
    --(4, 'Sam', 'sam@sam.com', 1),
    --(5, 'May', 'may@may.com', 2),
    --(6, 'Kenny', 'k@k.com', 1)
    (8, 'Mike', 'mike@mike.com', NULL)

INSERT INTO tblGender
    (ID, Gender)
VALUES
    (1, 'Male'),
    (2, 'Female'),
    (3, 'Unknown')


-- Add default constraint to GenderID column in tblPerson table
ALTER TABLE tblPerson
ADD CONSTRAINT DF_tblPerson_GenderID
DEFAULT 3 FOR GenderID

-- Create stored procedure to retreive records by Gender type
CREATE PROCEDURE spGetGenderByType
    @Gender NVARCHAR(20)
AS
BEGIN
    SELECT ID, Gender
    FROM tblGender
    WHERE Gender = @Gender
END

EXECUTE spGetGenderByType 'Male'
