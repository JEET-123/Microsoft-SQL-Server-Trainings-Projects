SELECT [product_name] , [company] , [state_name] , [timely_response] , [tags]
FROM Consumer_Complaints
WHERE state_name = 'NY' AND timely_response = 'Yes' AND tags = 'Older American'