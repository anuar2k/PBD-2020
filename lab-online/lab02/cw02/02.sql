USE library
SELECT member_no, fine_paid FROM loanhist
WHERE
fine_paid IS NOT NULL

-- or

SELECT member_no, fine_paid FROM loanhist
WHERE
fine_paid > 0

