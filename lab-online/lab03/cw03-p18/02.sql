USE library
SELECT DISTINCT title
FROM loan
JOIN title t ON loan.title_no = t.title_no