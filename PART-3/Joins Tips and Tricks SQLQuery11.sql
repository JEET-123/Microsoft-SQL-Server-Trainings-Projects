USE [pets]
GO
 
/*
 SELECT *
 FROM [dbo].[Pets]

 SELECT *
 FROM [dbo].[Owners] 

-- LEFT JOINS 

SELECT Pets.Name , Owners.Name
FROM Pets
LEFT JOIN Owners
ON Pets.OwnerID = Owners.OwnerID    */

-- Join Tips & Tricks 

-- Trick 1 : LEFT FUNCTION

SELECT Pets.Name , Owners.Name
FROM Pets
LEFT JOIN Owners
ON Pets.OwnerID = Owners.OwnerID  
WHERE LEFT(Pets.Name , 1) = LEFT(Owners.Name , 1)

-- Trick 2 : ALIASES FOR TABLES

SELECT A.Name , B.Name
FROM Pets AS A
LEFT JOIN Owners AS B 
ON A.OwnerID = B.OwnerID  
WHERE LEFT(A.Name , 1) = LEFT(B.Name , 1)

-- Trick 3 : ALIASES FOR COLUMNS

SELECT A.Name AS PetName, B.Name AS OwnerName
FROM Pets AS A
LEFT JOIN Owners AS B 
ON A.OwnerID = B.OwnerID  
WHERE LEFT(A.Name , 1) = LEFT(B.Name , 1)

-- Trick 4 : RIGHT JOINS 

SELECT A.Name AS PetName, B.Name AS OwnerName
FROM Owners AS B
RIGHT JOIN Pets AS A 
ON A.OwnerID = B.OwnerID  
