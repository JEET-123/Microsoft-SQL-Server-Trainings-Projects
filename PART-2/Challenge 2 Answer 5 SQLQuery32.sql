SELECT platform_name , DATEDIFF(YEAR , first_retail_availability , discontinued) AS years_existed
FROM console_dates ORDER BY years_existed ASC