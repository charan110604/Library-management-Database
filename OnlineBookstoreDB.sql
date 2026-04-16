
CREATE DATABASE OnlineBookstoreDB;
USE OnlineBookstoreDB;


CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

INSERT INTO Authors (name, country) VALUES
('Matt Haig', 'UK'),
('Yuval Noah Harari', 'Israel'),
('J.K. Rowling', 'UK'),
('George R.R. Martin', 'USA'),
('Dan Brown', 'USA'),
('Stephen King', 'USA'),
('Paulo Coelho', 'Brazil'),
('Agatha Christie', 'UK'),
('Arundhati Roy', 'India'),
('Chetan Bhagat', 'India'),
('James Clear', 'USA'),
('Mark Manson', 'USA'),
('Harper Lee', 'USA'),
('F. Scott Fitzgerald', 'USA'),
('Ernest Hemingway', 'USA'),
('Charles Dickens', 'UK'),
('Jane Austen', 'UK'),
('Leo Tolstoy', 'Russia'),
('J.R.R. Tolkien', 'UK'),
('Khaled Hosseini', 'Afghanistan');


CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    country VARCHAR(50)
);

INSERT INTO Publishers (name, country) VALUES
('Penguin Books', 'UK'),
('HarperCollins', 'USA'),
('Bloomsbury', 'UK'),
('Random House', 'USA'),
('Hachette', 'France'),
('Macmillan', 'USA'),
('Oxford Press', 'UK'),
('Scholastic', 'USA'),
('Simon & Schuster', 'USA'),
('Vintage', 'USA'),
('Scribner', 'USA'),
('Knopf', 'USA'),
('Allen & Unwin', 'Australia'),
('Rupa Publications', 'India'),
('Orient BlackSwan', 'India'),
('Pan Macmillan', 'UK'),
('Harvill Secker', 'UK'),
('Crown Publishing', 'USA'),
('Anchor Books', 'USA'),
('Ballantine Books', 'USA');


CREATE TABLE Genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Genres (genre_name) VALUES
('Fiction'),
('Non-Fiction'),
('Science & Technology'),
('Fantasy'),
('Mystery'),
('Thriller'),
('Romance'),
('Biography'),
('Self-Help'),
('History'),
('Poetry'),
('Drama'),
('Children'),
('Young Adult'),
('Horror'),
('Adventure'),
('Classics'),
('Philosophy'),
('Religion'),
('Comics');

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    author_id INT NOT NULL,
    publisher_id INT NOT NULL,
    genre_id INT NOT NULL,
    price DECIMAL(8,2) NOT NULL CHECK (price > 0),
    stock INT NOT NULL CHECK (stock >= 0),
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    CONSTRAINT fk_publisher FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id),
    CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

INSERT INTO Books (title, author_id, publisher_id, genre_id, price, stock) VALUES
('The Midnight Library', 1, 1, 1, 499.00, 10),
('Sapiens', 2, 2, 2, 799.00, 15),
('Harry Potter and the Sorcerer''s Stone', 3, 3, 4, 699.00, 25),
('A Game of Thrones', 4, 4, 4, 999.00, 5),
('The Da Vinci Code', 5, 5, 6, 599.00, 3),
('It', 6, 6, 15, 799.00, 8),
('The Alchemist', 7, 7, 7, 399.00, 20),
('Murder on the Orient Express', 8, 8, 5, 499.00, 6),
('The God of Small Things', 9, 14, 1, 499.00, 4),
('2 States', 10, 14, 7, 299.00, 12),
('Atomic Habits', 11, 9, 9, 599.00, 10),
('The Subtle Art of Not Giving a F*ck', 12, 9, 9, 499.00, 15),
('To Kill a Mockingbird', 13, 10, 1, 399.00, 7),
('The Great Gatsby', 14, 10, 17, 299.00, 2),
('The Old Man and the Sea', 15, 11, 17, 199.00, 9),
('Oliver Twist', 16, 7, 17, 249.00, 5),
('Pride and Prejudice', 17, 12, 17, 299.00, 8),
('War and Peace', 18, 13, 17, 699.00, 6),
('The Hobbit', 19, 13, 16, 599.00, 4),
('The Kite Runner', 20, 15, 1, 499.00, 3);


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(15) NOT NULL UNIQUE,
    address VARCHAR(255)
);

INSERT INTO Customers (name, email, phone, address) VALUES
('Amit Patel', 'amit@gmail.com', '9876543210', 'Mumbai'),
('Riya Sharma', 'riya@gmail.com', '9876543211', 'Delhi'),
('Suresh Kumar', 'suresh@gmail.com', '9876543212', 'Chennai'),
('Priya Verma', 'priya@gmail.com', '9876543213', 'Bangalore'),
('Arjun Mehta', 'arjun@gmail.com', '9876543214', 'Hyderabad'),
('Sneha Reddy', 'sneha@gmail.com', '9876543215', 'Pune'),
('Rohan Das', 'rohan@gmail.com', '9876543216', 'Kolkata'),
('Meena Iyer', 'meena@gmail.com', '9876543217', 'Delhi'),
('Karan Gupta', 'karan@gmail.com', '9876543218', 'Chennai'),
('Anita Singh', 'anita@gmail.com', '9876543219', 'Lucknow'),
('Deepak Rao', 'deepak@gmail.com', '9876543220', 'Jaipur'),
('Neha Jain', 'neha@gmail.com', '9876543221', 'Mumbai'),
('Vikas Sharma', 'vikas@gmail.com', '9876543222', 'Delhi'),
('Pooja Kapoor', 'pooja@gmail.com', '9876543223', 'Noida'),
('Manish Yadav', 'manish@gmail.com', '9876543224', 'Gurgaon'),
('Sunita Nair', 'sunita@gmail.com', '9876543225', 'Kerala'),
('Aditya Malhotra', 'aditya@gmail.com', '9876543226', 'Indore'),
('Shivani Bose', 'shivani@gmail.com', '9876543227', 'Nagpur'),
('Rahul Khanna', 'rahul@gmail.com', '9876543228', 'Patna'),
('Anjali Menon', 'anjali@gmail.com', '9876543229', 'Trivandrum');


CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('Pending','Shipped','Delivered','Cancelled')),
    total_value DECIMAL(10,2) DEFAULT 0 CHECK (total_value >= 0),
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (customer_id, order_date, status, total_value) VALUES
(1, '2024-01-05', 'Delivered', 1497.00),
(2, '2024-01-12', 'Shipped', 699.00),
(3, '2024-01-20', 'Pending', 999.00),
(4, '2024-02-10', 'Delivered', 1198.00),
(5, '2024-02-15', 'Delivered', 399.00),
(6, '2024-03-02', 'Shipped', 499.00),
(7, '2024-03-20', 'Delivered', 1598.00),
(8, '2024-04-05', 'Delivered', 799.00),
(9, '2024-04-10', 'Pending', 399.00),
(10, '2024-04-18', 'Delivered', 699.00),
(11, '2024-05-01', 'Shipped', 999.00),
(12, '2024-05-12', 'Delivered', 1497.00),
(13, '2024-06-01', 'Delivered', 599.00),
(14, '2024-06-10', 'Pending', 299.00),
(15, '2024-07-15', 'Shipped', 399.00),
(16, '2024-07-20', 'Delivered', 499.00),
(17, '2024-08-01', 'Delivered', 399.00),
(18, '2024-08-10', 'Delivered', 1198.00),
(19, '2024-09-01', 'Shipped', 699.00),
(20, '2024-09-12', 'Pending', 999.00);


CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0),
    price DECIMAL(8,2) NOT NULL CHECK (price > 0),
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- (20 records, matching books and orders)
INSERT INTO Order_Items (order_id, book_id, quantity, price) VALUES
(1, 1, 3, 499.00),
(2, 3, 1, 699.00),
(3, 4, 1, 999.00),
(4, 2, 2, 599.00),
(5, 7, 1, 399.00),
(6, 12, 1, 499.00),
(7, 3, 2, 799.00),
(8, 6, 1, 799.00),
(9, 13, 1, 399.00),
(10, 19, 1, 699.00),
(11, 5, 1, 999.00),
(12, 1, 3, 499.00),
(13, 11, 1, 599.00),
(14, 10, 1, 299.00),
(15, 15, 2, 199.00),
(16, 16, 2, 249.00),
(17, 7, 1, 399.00),
(18, 4, 2, 599.00),
(19, 2, 1, 699.00),
(20, 8, 2, 499.00);


CREATE TABLE Payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL UNIQUE,
    payment_date DATE NOT NULL,
    amount DECIMAL(10,2) NOT NULL CHECK (amount >= 0),
    status VARCHAR(20) NOT NULL CHECK (status IN ('Paid','Pending','Failed')),
    CONSTRAINT fk_payment_order FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Payments (order_id, payment_date, amount, status) VALUES
(1, '2024-01-05', 1497.00, 'Paid'),
(2, '2024-01-12', 699.00, 'Paid'),
(3, '2024-01-20', 999.00, 'Pending'),
(4, '2024-02-10', 1198.00, 'Paid'),
(5, '2024-02-15', 399.00, 'Paid'),
(6, '2024-03-02', 499.00, 'Paid'),
(7, '2024-03-20', 1598.00, 'Paid'),
(8, '2024-04-05', 799.00, 'Paid'),
(9, '2024-04-10', 399.00, 'Pending'),
(10, '2024-04-18', 699.00, 'Paid'),
(11, '2024-05-01', 999.00, 'Paid'),
(12, '2024-05-12', 1497.00, 'Paid'),
(13, '2024-06-01', 599.00, 'Paid'),
(14, '2024-06-10', 299.00, 'Pending'),
(15, '2024-07-15', 399.00, 'Paid'),
(16, '2024-07-20', 499.00, 'Paid'),
(17, '2024-08-01', 399.00, 'Paid'),
(18, '2024-08-10', 1198.00, 'Paid'),
(19, '2024-09-01', 699.00, 'Paid'),
(20, '2024-09-12', 999.00, 'Pending');


CREATE TABLE Reviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    customer_id INT NOT NULL,
    rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    review_date DATE NOT NULL,
    CONSTRAINT fk_review_book FOREIGN KEY (book_id) REFERENCES Books(book_id),
    CONSTRAINT fk_review_customer FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Reviews (book_id, customer_id, rating, comment, review_date) VALUES
(1, 1, 5, 'Inspirational book!', '2024-01-06'),
(1, 2, 4, 'Nice concept.', '2024-01-07'),
(1, 3, 5, 'Loved it.', '2024-01-08'),
(2, 4, 5, 'Eye-opening.', '2024-02-11'),
(3, 5, 5, 'Magical!', '2024-02-16'),
(4, 6, 4, 'Epic fantasy.', '2024-03-03'),
(5, 7, 3, 'Thrilling but lengthy.', '2024-03-21'),
(6, 8, 5, 'Scary masterpiece.', '2024-04-06'),
(7, 9, 5, 'Life changing.', '2024-04-11'),
(8, 10, 4, 'Classic mystery.', '2024-04-19'),
(9, 11, 5, 'Beautiful writing.', '2024-05-02'),
(10, 12, 4, 'Entertaining.', '2024-05-13'),
(11, 13, 5, 'Very practical.', '2024-06-02'),
(12, 14, 3, 'Good but overrated.', '2024-06-11'),
(13, 15, 5, 'A must read.', '2024-07-16'),
(14, 16, 4, 'Classic storytelling.', '2024-07-21'),
(15, 17, 4, 'Simple but deep.', '2024-08-02'),
(16, 18, 5, 'Loved Dickens.', '2024-08-11'),
(17, 19, 5, 'Timeless romance.', '2024-09-02'),
(18, 20, 5, 'Masterpiece.', '2024-09-13');

select * from publishers; 
select * from books;   
select * from customers;   
select * from authors; 
select * from payments;  
select * from genres;
select * from order_items;  
select * from orders;   
select * from reviews;

ALTER TABLE publishers
RENAME COLUMN name TO publisher_name;

ALTER TABLE customers
RENAME COLUMN name TO customer_name;

ALTER TABLE authors
RENAME COLUMN name TO author_name;

update books set stock = stock + 50 where book_id not in(5,9,14,19,20);
update order_items set quantity = quantity + 15 where order_item_id between 1 and 20;

ALTER TABLE Customers
ADD COLUMN role VARCHAR(50) DEFAULT 'customer';

insert into customers values(21,'Admin','adminuser@gmail.com','98767894027','India','admin');

