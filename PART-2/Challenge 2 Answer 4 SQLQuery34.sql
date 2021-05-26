SELECT platform_name , [first_retail_availability]
FROM [dbo].[console_dates]
WHERE DATEPART(MONTH , [first_retail_availability])-11 = 0 OR DATEPART(MONTH , [first_retail_availability])-12 = 0