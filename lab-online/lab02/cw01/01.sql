USE library

SELECT title_no, title FROM title

-- or

SELECT isbn, title FROM item
JOIN title t ON item.title_no = t.title_no