USE [pets]
GO
 
/*
 SELECT *
 FROM [dbo].[Pets]

 SELECT *
 FROM [dbo].[Owners] 
 */
-- LEFT JOINS 

SELECT Pets.Name , Owners.Name
FROM Pets
LEFT JOIN Owners
ON Pets.OwnerID = Owners.OwnerID   









