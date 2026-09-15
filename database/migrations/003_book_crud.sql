--book SQL#1 : select 1 books
SELECT * FROM books;

-- book SQL#2 : select books in asc order;
SELECT * FROM books
   ORDER BY book_id ASC;

-- book SQL#3 : select books in desc order_id;
SELECT * FROM books
   ORDER BY book_id DESC;

--book SQL #4 : select books in asc order by title;
SELECT * FROM books
   ORDER BY book_title ASC;

--book SQL #5 : select books in desc order by title ;
SELECT * FROM books
   ORDER BY book_title DESC;

--book SQL #6: select books in asc order by book_author;
SELECT * FROM books
   ORDER BY book_author ASC;

--book SQL #7 : select books in desc order by book_author;
SELECT * FROM books
   ORDER BY book_author DESC;

--book SQL #8: select books in asc order by book_category;
SELECT * FROM books
   ORDER BY book_category ASC;

--book SQL #9 : select books in desc order by book_category;
SELECT * FROM books
   ORDER BY book_category DESC;



-- You can modify displayed columns by selecting
-- specific columns after SELECT command
-- book SQL#9 display all books title, author and category


SELECT book_title,
       book_author,
       book_category  
FROM books
ORDER BY book_title ASC;


-- book SQL#10 LIMIT 1 - you can change the limit to any number
SELECT book_title,
       book_author,
       book_category  
FROM books
WHERE book_id = 1
LIMIT 1;

-- book SQL#11 - Update book details based on id
UPDATE books
SET book_title = 'The Great Gatsby',
    book_author = 'F. Scott Fitzgerald',
    book_category = 'Fiction'
WHERE book_id = 1;

