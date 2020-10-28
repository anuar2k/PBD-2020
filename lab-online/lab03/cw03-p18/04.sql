USE library
SELECT DISTINCT isbn
FROM loan
JOIN member m ON m.member_no = loan.member_no
WHERE firstname = 'Stephen' AND
      middleinitial = 'A' AND
      lastname = 'Graff'