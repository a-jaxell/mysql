USE bookstore;
INSERT INTO author (first_name, last_name, birth_date) VALUES ('John', 'Doe', '1990-05-15');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('Alice', 'Smith', '1985-08-22');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('Robert', 'Johnson', '1972-03-10');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('Emily', 'Brown', '1995-12-05');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('Daniel', 'Wilson', '1980-07-18');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('Sophia', 'Miller', '1992-04-30');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('William', 'Taylor', '1978-09-27');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('Olivia', 'Harris', '1987-06-14');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('Michael', 'Clark', '1983-02-08');
INSERT INTO author (first_name, last_name, birth_date) VALUES ('Ella', 'Adams', '1998-11-25');
-- Insert languages
INSERT INTO language (language) VALUES ('English');
INSERT INTO language (language) VALUES ('Spanish');
INSERT INTO language (language) VALUES ('French');
INSERT INTO language (language) VALUES ('German');
INSERT INTO language (language) VALUES ('Chinese');
-- Insert books

INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9780123456789', 'To Kill a Mockingbird', 1, 1999, '2022-01-15', 1);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9781234567890', 'The Great Gatsby', 2, 2999, '2021-11-20', 2);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9782345678901', '1984', 3, 1499, '2020-09-05', 3);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9783456789012', 'Pride and Prejudice', 4, 2599, '2019-08-12', 4);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9784567890123', 'The Catcher in the Rye', 5, 999, '2018-06-28', 5);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9785678901234', 'Moby-Dick', 2, 1499, '2017-05-17', 6);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9786789012345', 'War and Peace', 3, 3499, '2016-03-22', 7);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9787890123456', 'The Lord of the Rings', 4, 1999, '2015-02-01', 8);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9788901234567', 'Brave New World', 4, 2599, '2014-12-03', 9);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9789012345678', 'The Odyssey', 1, 3999, '2013-10-10', 10);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9780123456781', 'Crime and Punishment', 1, 1999, '2012-08-27', 1);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9781234567892', 'Frankenstein', 1, 2999, '2011-06-14', 2);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9782345678903', 'Hamlet', 2, 1499, '2010-04-30', 3);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9783456789014', 'The Count of Monte Cristo', 4, 2599, '2009-03-05', 4);
INSERT INTO book (isbn, title, language_id, price, publication_date, author_id) VALUES ('9784567890125', 'Don Quixote', 5, 999, '2008-01-22', 5);
-- Insert stores
INSERT INTO bookstore (name, location) VALUES ('Book Haven', '123 Main Street, Cityville');
INSERT INTO bookstore (name, location) VALUES ('Readers Paradise', '456 Elm Avenue, Townsville');
INSERT INTO bookstore (name, location) VALUES ('Book Nook', '789 Oak Road, Villagetown');
INSERT INTO bookstore (name, location) VALUES ('Novel Delights', '1011 Maple Lane, Bookburgh');
INSERT INTO bookstore (name, location) VALUES ('Page Turner Books', '1313 Birch Street, Readsville');
INSERT INTO bookstore (name, location) VALUES ('The Bookworm Emporium', '1616 Cedar Avenue, Bookville');
INSERT INTO bookstore (name, location) VALUES ('Chapters & Verse', '1818 Pine Road, Readington');
INSERT INTO bookstore (name, location) VALUES ('Literary Corner', '2121 Willow Drive, Novelburg');
INSERT INTO bookstore (name, location) VALUES ('Booklovers Retreat', '2323 Redwood Lane, Wordville');
INSERT INTO bookstore (name, location) VALUES ('Ink & Quill Books', '2525 Spruce Street, Storytown');
-- Insert inventory
INSERT INTO inventory(store_id, isbn, amount) VALUES (1,'9784567890123', 6);
INSERT INTO inventory(store_id, isbn, amount) VALUES (2,'9784567890123', 17);
INSERT INTO inventory(store_id, isbn, amount) VALUES (6,'9784567890123', 13);
INSERT INTO inventory(store_id, isbn, amount) VALUES (3,'9789012345678', 23);
INSERT INTO inventory(store_id, isbn, amount) VALUES (7,'9789012345678', 5);
INSERT INTO inventory(store_id, isbn, amount) VALUES (9,'9784567890123', 8);
INSERT INTO inventory(store_id, isbn, amount) VALUES (3,'9784567890125', 34);
INSERT INTO inventory(store_id, isbn, amount) VALUES (5,'9784567890123', 23);
INSERT INTO inventory(store_id, isbn, amount) VALUES (8,'9784567890123', 10);
INSERT INTO inventory(store_id, isbn, amount) VALUES (10,'9784567890125', 11);