SELECT [product_name], [issue] , [company] , [state_name] 
FROM Consumer_Complaints
WHERE state_name = 'NY' OR state_name = 'CA'