SELECT COUNT(*)
FROM Transactions

-- 3455 ROWS

SELECT COUNT(*)
FROM
(
  SELECT DISTINCT *
  FROM Transactions

  ) AS ABC

-- 3455 ROWS 