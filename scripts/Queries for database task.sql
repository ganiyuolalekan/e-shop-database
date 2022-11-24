# In this script, we'll be writing queries 
# to solve the following question
# 
# Answering the questions

use eshop;

# 1.  Extract all customer from a specific city. city = 'Abuja'
SELECT 
    id, first_name, last_name, city, country
FROM
    customer
WHERE
    city = 'Abuja';

# 2.  Search for a product of a specific genre. genre = 'children'
SELECT 
    id, title, unit_price, genre, product_lang, product_type
FROM
    product
WHERE
    genre = 'children';

# 3.  Count how many customers from a specific city.
SELECT 
    city, COUNT(city) AS customer_count
FROM
    customer
GROUP BY city;

# 4.  Calculate the average of the unit price.
SELECT 
    AVG(unit_price) AS unit_price_average
FROM
    product;

# 5.  Extract all current orders.
SELECT 
    c.first_name,
    c.last_name,
    p.title,
    p.unit_price,
    p.product_type
FROM
    customer c
        JOIN
    payment py ON c.id = py.purchasing_customer
        JOIN
    product p ON p.id = py.purchased_product;

# 6.  Extract all orders for books that has the keyword "the" in their description.
SELECT 
    c.first_name,
    c.last_name,
    p.title,
    p.product_desc,
    p.unit_price,
    p.product_type
FROM
    customer c
        JOIN
    payment py ON c.id = py.purchasing_customer
        JOIN
    product p ON p.id = py.purchased_product
WHERE
    p.product_desc LIKE '%the%';

# 7.  Extract all the payment with credit card for music records.
SELECT 
    c.first_name,
    c.last_name,
    p.title,
    p.unit_price,
    c.credit_card
FROM
    customer c
        JOIN
    payment py ON c.id = py.purchasing_customer
        JOIN
    product p ON p.id = py.purchased_product;

# 8.  Count how many employees handle music records. product_type = 'music'
SELECT 
    c.first_name,
    c.last_name,
    p.title,
    p.unit_price,
    p.product_type,
    p.product_lang,
    e.first_name,
    e.last_name
FROM
    customer c
        JOIN
    payment py ON c.id = py.purchasing_customer
        JOIN
    product p ON p.id = py.purchased_product
        JOIN
    employee e ON e.id = p.assigned_employee
WHERE
    p.product_type = 'music';

# 9.  Count how many employees first name is John
SELECT 
    first_name, last_name
FROM
    employee
WHERE
    first_name = 'John';

# 10. Count how many orders are in the system
SELECT 
    COUNT(*) AS system_order_count
FROM
    payment;
