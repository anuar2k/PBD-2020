USE library
SELECT LOWER(CONCAT(firstname, middleinitial, LEFT(lastname, 2))) AS email_name FROM member
WHERE lastname = 'Anderson'