USE library
SELECT jm.firstname AS child_firstname,
       jm.middleinitial AS child_initial,
       jm.lastname AS child_lastname,
       am.firstname AS parent_firstname,
       am.middleinitial AS parent_initial,
       am.lastname AS parent_lastname,
       street,
       city,
       zip,
       state
FROM juvenile
JOIN adult a ON a.member_no = juvenile.adult_member_no
JOIN member am ON a.member_no = am.member_no
JOIN member jm ON juvenile.member_no = jm.member_no
