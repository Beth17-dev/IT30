CREATE TABLE books(
    book_id INT PRIMARY KEY AUTHO_INCREMENT,
    book_title VARCHAR(100) NT NULL,
    book_author VARCHAR(100) NT NULL,
    book_category VARCHAR(50) NT NULL,
    boook_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE borrow (
    borrow_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    borrow_return_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES books(book_id)
);

SELECT br.borrow_id, s.student_id,
    CONCAT(s.student_first_name,' ', s.student_last_name) AS student_name, s.student_course,
    b.book_title, b.book_author, b.book_category,
    br.borrow_date
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = b.book_id
ORDER BY br.borrow_date DESC;