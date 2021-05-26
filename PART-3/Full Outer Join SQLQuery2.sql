SELECT * 
FROM Pets AS A
FULL OUTER JOIN ProceduresHistory AS B
ON A.Petid = B.PetID