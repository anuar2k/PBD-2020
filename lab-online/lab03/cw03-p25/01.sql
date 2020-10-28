USE library
SELECT firstname, middleinitial, lastname, birth_date, street, city, state, zip
FROM juvenile
JOIN member m ON juvenile.member_no = m.member_no
JOIN adult a ON a.member_no = juvenile.adult_member_no