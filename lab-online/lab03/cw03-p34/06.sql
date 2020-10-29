USE library
SELECT firstname, lastname
FROM member
LEFT JOIN loanhist l ON member.member_no = l.member_no
LEFT JOIN loan ON member.member_no = loan.member_no
WHERE l.member_no IS NULL AND loan.member_no IS NULL