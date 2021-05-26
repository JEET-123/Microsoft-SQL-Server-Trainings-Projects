

---- COMPLEX JOINS 

SELECT * 
FROM Pets AS A
INNER JOIN ProceduresHistory AS B
ON A.Petid = B.PetID

LEFT JOIN [dbo].[ProceduresDetails] AS C
ON B.ProcedureType = C.ProcedureType
AND B.ProcedureSubCode = C.ProcedureSubCode