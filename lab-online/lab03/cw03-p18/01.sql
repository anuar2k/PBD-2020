USE library
SELECT firstname, middleinitial, lastname, birth_date
FROM juvenile
JOIN member m ON juvenile.member_no = m.member_no