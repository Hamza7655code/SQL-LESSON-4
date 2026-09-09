CREATE TABLE IF NOT EXISTS book (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT NOT NULL,
    rating REAL NOT NULL,
    pages INTEGER NOT NULL,
    pub_year INTEGER NOT NULL
    
);

INSERT INTO book VALUES (1, 'Dragon Quest', 'fantasy', 9.2,312,2021);
INSERT INTO book VALUES (2, 'Code Wizards', 'sci-fi', 8.5, 280, 2020);
INSERT INTO book VALUES (3, 'Ocean Deep', 'adventure', 7.8, 195, 2022);
INSERT INTO book VALUES (4, 'star rangers', 'sci-fi', 9.5, 340, 2019);
INSERT INTO book VALUES (5, 'forest secrets', 'fantasy', 7.2, 260, 2021);
INSERT INTO book VALUES (6 , 'robot city', 'sci-fi', 8.9, 260, 2021);
INSERT INTO book VALUES (7, 'time jumpers', 'adventure', 8.9, 175, 2022);
INSERT INTO book VALUES (8, 'magic academy', 'fantasy', 9.0, 398, 2020);

SELECT * FROM book;
DROP TABLE book;

SELECT title, rating FROM book ORDER BY rating ASC;

SELECT title, rating FROM book ORDER BY rating DESC;

SELECT title, genre, rating FROM book ORDER BY genre ASC, rating DESC;

SELECT title, rating FROM book ORDER BY rating DESC LIMIT 3;

SELECT title, pub_year FROM book ORDER BY rating ASC LIMIT 5;

SELECT genre , COUNT(*) AS book_count FROM book GROUP BY genre;

SELECT genre, SUM(pages) AS total_pages, AVG(rating) AS average_rating FROM book GROUP BY genre;

SELECT genre, COUNT(*) AS book_count FROM book GROUP BY genre HAVING COUNT(*) > 2;

SELECT genre, AVG(rating) AS avg_rating FROM book GROUP BY genre HAVING AVG(rating) >= 8.5;
