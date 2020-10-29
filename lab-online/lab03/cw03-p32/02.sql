USE library
SELECT member.member_no, firstname, lastname, isbn, out_date, due_date
FROM member
JOIN loan l ON member.member_no = l.member_no
WHERE member.member_no IN (250, 342, 1675)