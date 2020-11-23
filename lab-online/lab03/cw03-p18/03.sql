USE library
SELECT in_date,
       DATEDIFF(day, due_date, in_date) AS delay,
       fine_paid
FROM loanhist
JOIN title t ON loanhist.title_no = t.title_no
WHERE title = 'Tao Teh King' AND
      in_date > due_date