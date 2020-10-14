USE library
SELECT member_no, isbn, copy_no, fine_assessed FROM loanhist
WHERE
fine_assessed BETWEEN 8.00 AND 9.00