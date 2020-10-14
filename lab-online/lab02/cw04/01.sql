USE library
SELECT CONCAT(firstname, middleinitial, lastname) AS email_name FROM member
WHERE
lastname = 'Anderson'

SELECT LOWER(CONCAT(firstname, middleinitial, SUBSTRING(lastname, 0, 2))) AS email_name FROM member
WHERE
lastname = 'Anderson'