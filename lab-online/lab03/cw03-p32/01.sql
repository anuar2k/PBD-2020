USE library
SELECT CONCAT_WS(' ', firstname, lastname) AS name,
       CONCAT_WS(' ', street, city, zip, state) AS address
FROM adult
JOIN member m ON adult.member_no = m.member_no