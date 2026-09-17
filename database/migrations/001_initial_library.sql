--#1 students table
CREATE TABLE IF NOT EXISTS students (
  ---Primary key for the students table
  student_id INT PRIMARY KEY AUTO_INCREMENT,

  --Student name
  student_first_name VARCHAR(50) NOT NULL,
  student_last_name VARCHAR(50) NOT NUll,

  --Student course
  student_course VARCHAR(50) NOT NULL,

  --Student created at timestamp
  student_created_at TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

-- #2 books table
CREATE TABLE IF NOT EXISTS books (
    --Primary key for the book table
    book_id INT PRIMARY KEY AUTO_INCREMENT,

    -- Book details
    book_title VARCHAR(50) NOT NULL,
    book_author VARCHAR(50) NOT NULL,
    book_category VARCHAR(50) NOT NULL,

    --book created at timestamp
    book_created_at TIMESTAMP NOT NULL
     DEFAULT CURRENT_TIMESTAMP

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;



-- #3 borrow able
CREATE TABLE IF NOT EXISTS borrow(
    --Primary key for the borrow table
    borrow_id INT AUTO_INCREMENT PRIMARY KEY

    --Foreign Key references
    student_id INT NOT NULL,
    book_id INT NOT NULL,

    --Borrow timestamp not null by default
    borrow_date TIMESTAMP NOT NULL
      DEFAULT CURRENT_TIMESTAMP,

    --Borrow table constraints anf foreign key
    CONSTRAINT fk_borrow_student
      FOREIGN KEY (student_id)
      REFERENCES students(student_id)
      ON UPDATE CASCADE
      ON DELETE RESTRICT,

)ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


-- Insert statementg #1: Insert Students
INSERT INTO students(
    student_first_name,
    student_last_name,
    student_course
) VALUES
("John","Salapang","BSIT"),
("April Beth", "Salapang", "BSIT"),
("Gab", "Salapang", "BSIT");


--Insert statement #2: Insert Book
INSERT INTO books(
    book_title,
    book_author,
    book_category
)VALUES
("The Great Gatsby","F. Scott Fitzgerald","Fiction"),
("Atomic Habits", "James Clear", "Self-Help"),
("The Alchemist", "Paulo Coelho", "Adventure");

--Insert statement #3: Insert borrow
INSERT INTO borrow(
    student_id,
    book_id
)VALUES
 (1,2),
 (2,1),
 (3,2);



    

