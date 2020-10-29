USE library
SELECT adult.member_no
FROM adult
JOIN juvenile j ON adult.member_no = j.adult_member_no
JOIN member m ON adult.member_no = m.member_no
WHERE state = 'AZ'
GROUP BY adult.member_no
HAVING COUNT(*) >= 2