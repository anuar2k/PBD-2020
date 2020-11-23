USE library
SELECT member.member_no, firstname, lastname, isbn, log_date
FROM member
JOIN reservation r ON member.member_no = r.member_no
WHERE member.member_no IN (250, 342, 1675)