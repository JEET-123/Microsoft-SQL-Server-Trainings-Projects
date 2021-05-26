
---- Joining on Multiple Fields 

SELECT * 
FROM ProceduresHistory AS A
LEFT JOIN ProceduresDetails AS B
ON A.ProcedureType = B.ProcedureType
AND A.ProcedureSubCode = B.ProcedureSubCode