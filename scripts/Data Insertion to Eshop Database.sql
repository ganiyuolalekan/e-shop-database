# This script inserts into the database 
# creating virtual records that can be used 
# to run queries that tackle question on the database. 

USE eshop;

INSERT INTO employee (first_name, last_name)
VALUES
	('Johnny', 'Mitchell'),
    ('John', 'Tanner'),
    ('Griffin', 'John');

INSERT INTO product (
	title, product_desc, unit_price, release_date,
    product_lang, genre, product_type, assigned_employee
)
VALUES
	(
		'Smells Like Teen Spirit - Nirvana', 'Music by Nirvana', 
        5000.00, '2021/06/30', 'English', 'pop', 'music', 1
	),
    (
		'Citizen Kane (1941)', 'Seventy-year-old newspaper tycoon Charles Foster Kane dies in his palatial...', 
        7000.00, '2021/04/29', 'English', 'drama', 'movie', 1
	),
    (
		'Da Vinci Code,The', 'Book by Brown, Dan', 
        1000.00, '2020/06/20', 'English', 'crime', 'book', 2
	),
    (
		'Harry Potter and the Deathly Hallows', 'Book by Rowling, J.K.', 
        900.00, '2019/07/11', 'Spanish', 'children', 'book', 3
	),
    (
		'Imagine - John Lennon', 'Music by John Lennon', 
        6000.00, '2021/12/21', 'English', 'rap', 'music', 2
	),
    (
		'Casablanca (1942)', 'During World War II, Casablanca, Morocco is a waiting point for throngs of...', 
        6500.00, '2021/09/17', 'Spanish', 'action', 'movie', 2
	),
    (
		'Harry Potter and the Deathly Hallows', 'Book by Rowling, J.K.', 
        1000.00, '2019/11/09', 'English', 'children', 'book', 1
	),
    (
		'Harry Potter and the Philosophers Stone', 'Book by Rowling, J.K.', 
        800.00, '2018/12/22', 'English', 'children', 'book', 2
	),
    (
		'Waterloo Sunset - The Kinks', 'Music by The Kinks', 
        3000.00, '2021/10/03', 'Spanish', 'rap', 'music', 3
	),
    (
		'Casablanca (1942)', 'During World War II, Casablanca, Morocco is a waiting point for throngs of...', 
        6500.00, '2021/09/17', 'Spanish', 'action', 'movie', 2
	),
    (
		'Fifty Shades of Grey', 'Book by James, E. L.', 
        1200.00, '2017/02/12', 'Spanish', 'romance', 'book', 3
	),
    (
		'Twilight', 'Book by Meyer, Stephenie', 
        500.00, '2020/01/13', 'English', 'children', 'book', 1
	),
    (
		'Bohemian Rhapsody - Queen', 'Music by Queen', 
        4000.00, '2021/02/14', 'English', 'jazz', 'music', 1
	),
    (
		'The Godfather (1972)', 'In August 1945, during the lavish wedding reception of his daughter Connie...', 
        5500.00, '2021/09/17', 'English', 'horror', 'movie', 3
	),
    (
		'Fifty Shades of Grey', 'Book by James, E. L.', 
        1400.00, '2017/02/12', 'English', 'romance', 'book', 2
	);


INSERT INTO customer (first_name, last_name, phone_number, email, city, country, credit_card)
VALUES
	('Kailyn', 'Moses', 81736540282, 'Kailyn@gmail.com', 'New York', 'USA', 6251846233),
    ('Braedon', 'Huynh', 8162751846, 'Braedon@gmail.com', 'Abuja', 'Nigeria', 8175265308),
    ('Landyn', 'Rivers', 8762541094, 'Landyn@gmail.com', 'Lagos', 'Nigeria', 8173627490),
	('Guillermo', 'Wilkins', 7817629085, 'Guillermo@gmail.com', 'Boston', 'USA', 1927491857),
    ('John', 'Wilkins', 9817265341, 'John@gmail.com', 'Abuja', 'Nigeria', 2857234589),
    ('Carla', 'Harper', 712837261, 'Carla@gmail.com', 'New York', 'USA', 9182635219);

INSERT INTO payment (purchased_product, purchasing_customer) 
VALUES
	(1, 1),
    (3, 3),
    (5, 5),
    (8, 2),
    (9, 3),
    (10, 4),
    (13, 1),
    (14, 2),
    (15, 3),
    (1, 4),
    (2, 5),
    (4, 1),
    (5, 2),
    (6, 3),
    (7, 4),
    (10, 1),
    (11, 2),
    (13, 4),
    (14, 5);
