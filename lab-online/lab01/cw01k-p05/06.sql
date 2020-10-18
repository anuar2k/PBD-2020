USE library
SELECT member_no, fine_assessed, fine_paid, fine_waived FROM loanhist
WHERE fine_assessed - ISNULL(fine_waived, 0) > ISNULL(fine_paid, 0)