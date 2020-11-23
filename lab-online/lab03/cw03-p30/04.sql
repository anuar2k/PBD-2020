USE library
SELECT DISTINCT adult.member_no, street, city, state, zip
FROM adult
JOIN juvenile j ON adult.member_no = j.adult_member_no
LEFT JOIN loan l ON adult.member_no = l.member_no
WHERE birth_date < '1996-01-01' AND
      (l.member_no IS NULL OR
       due_date > GETDATE())

