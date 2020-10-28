USE library
SELECT member_no, fine_assessed, fine_paid, fine_waived FROM loanhist
WHERE ISNULL(fine_assessed, 0) - ISNULL(fine_waived, 0) > ISNULL(fine_paid, 0)