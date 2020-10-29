USE library
SELECT adult.member_no
FROM adult
JOIN juvenile j ON adult.member_no = j.adult_member_no
JOIN member m ON adult.member_no = m.member_no
GROUP BY adult.member_no, state
HAVING (state = 'AZ' AND
        COUNT(*) > 2) OR
       (state = 'CA' AND
        COUNT(*) > 3)

--or

SELECT adult.member_no
FROM adult
JOIN juvenile j ON adult.member_no = j.adult_member_no
JOIN member m ON adult.member_no = m.member_no
WHERE state = 'AZ'
GROUP BY adult.member_no
HAVING COUNT(*) >= 2

UNION

SELECT adult.member_no
FROM adult
JOIN juvenile j ON adult.member_no = j.adult_member_no
JOIN member m ON adult.member_no = m.member_no
WHERE state = 'CA'
GROUP BY adult.member_no
HAVING COUNT(*) >= 3