USE library
SELECT DISTINCT adult.member_no, street, city, state, zip
FROM adult
JOIN juvenile j ON adult.member_no = j.adult_member_no
JOIN member m ON adult.member_no = m.member_no
LEFT JOIN loanhist l ON adult.member_no = l.member_no
WHERE birth_date < '1996-01-01' AND
      (l.member_no IS NULL OR
       in_date < GETDATE())