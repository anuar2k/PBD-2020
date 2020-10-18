USE library
SELECT member_no, isbn, fine_assessed, fine_assessed * 2 AS [double fine] FROM loanhist
WHERE fine_assessed IS NOT NULL
  AND fine_assessed > 0