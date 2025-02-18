-- Creating new database with the name New_Lib_mngmt_system
CREATE DATABASE IF NOT EXISTS new_lib_mngmt_system;
USE new_lib_mngmt_system;

-- Creating new table with name new_tbl_category consisting of new_category_id & new_category_name
CREATE TABLE new_tbl_category (
    new_category_id INT PRIMARY KEY AUTO_INCREMENT,
    new_category_name VARCHAR(50)
);

-- Creating new table with name new_tbl_publisher consisting of new_publisher_id, new_publisher_name, new_publication_language & new_publication_type
CREATE TABLE new_tbl_publisher (
    new_publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    new_publisher_name VARCHAR(50),
    new_publication_language VARCHAR(15),
    new_publication_type VARCHAR(20)
);

-- Creating new table with name new_tbl_location consisting of new_location_id, new_shelf_no, new_shelf_name & new_floor_no
CREATE TABLE new_tbl_location (
    new_location_id INT PRIMARY KEY AUTO_INCREMENT,
    new_shelf_no VARCHAR(10),
    new_shelf_name VARCHAR(50),
    new_floor_no INT
);

-- Creating new table with name new_tbl_author consisting of new_author_id, new_first_name & new_last_name
CREATE TABLE new_tbl_author (
    new_author_id INT PRIMARY KEY AUTO_INCREMENT,
    new_first_name VARCHAR(20),
    new_last_name VARCHAR(20)
);

-- Creating new table with name new_tbl_book consisting of new_book_id, new_isbn_code, new_book_title, new_category_id, new_publisher_id, new_publication_year, new_book_edition, new_copies_total, new_copies_available & new_location_id
CREATE TABLE new_tbl_book (
    new_book_id INT PRIMARY KEY AUTO_INCREMENT,
    new_isbn_code VARCHAR(15),
    new_book_title VARCHAR(50),
    new_category_id INT,
    new_publisher_id INT,
    new_publication_year DATE,
    new_book_edition INT,
    new_copies_total INT,
    new_copies_available INT,
    new_location_id INT,
    FOREIGN KEY (new_category_id) REFERENCES new_tbl_category(new_category_id),
    FOREIGN KEY (new_publisher_id) REFERENCES new_tbl_publisher(new_publisher_id),
    FOREIGN KEY (new_location_id) REFERENCES new_tbl_location(new_location_id)
);

-- Creating new table with name new_tbl_book_author consisting of new_book_id & new_author_id
CREATE TABLE new_tbl_book_author (
    new_book_id INT,
    new_author_id INT,
    FOREIGN KEY (new_book_id) REFERENCES new_tbl_book(new_book_id),
    FOREIGN KEY (new_author_id) REFERENCES new_tbl_author(new_author_id)
);

-- Creating new table with name new_tbl_member_status consisting of new_active_status_id, new_account_type, new_account_status, new_membership_start_date & new_membership_end_date
CREATE TABLE new_tbl_member_status (
    new_active_status_id INT PRIMARY KEY AUTO_INCREMENT,
    new_account_type VARCHAR(20),
    new_account_status VARCHAR(10),
    new_membership_start_date DATE,
    new_membership_end_date DATE
);

-- Creating new table with name new_tbl_member consisting of new_member_id, new_first_name, new_last_name, new_city, new_mobile_no, new_email_id, new_date_of_birth & new_active_status_id
CREATE TABLE new_tbl_member (
    new_member_id INT PRIMARY KEY AUTO_INCREMENT,
    new_first_name VARCHAR(20),
    new_last_name VARCHAR(20),
    new_city VARCHAR(20),
    new_mobile_no VARCHAR(10),
    new_email_id VARCHAR(50),
    new_date_of_birth DATE,
    new_active_status_id INT,
    FOREIGN KEY (new_active_status_id) REFERENCES new_tbl_member_status(new_active_status_id)
);

-- Creating new table with name new_tbl_library_staff consisting of new_issue_by_id, new_staff_name & new_staff_designation
CREATE TABLE new_tbl_library_staff (
    new_issue_by_id INT PRIMARY KEY AUTO_INCREMENT,
    new_staff_name VARCHAR(50),
    new_staff_designation VARCHAR(20)
);

-- Creating new table with name new_tbl_book_issue consisting of new_issue_id, new_book_id, new_member_id, new_issue_date, new_return_date, new_issue_status & new_issued_by_id
CREATE TABLE new_tbl_book_issue (
    new_issue_id INT PRIMARY KEY AUTO_INCREMENT,
    new_book_id INT,
    new_member_id INT,
    new_issue_date DATE,
    new_return_date DATE,
    new_issue_status VARCHAR(20),
    new_issued_by_id INT,
    FOREIGN KEY (new_book_id) REFERENCES new_tbl_book(new_book_id),
    FOREIGN KEY (new_member_id) REFERENCES new_tbl_member(new_member_id),
    FOREIGN KEY (new_issued_by_id) REFERENCES new_tbl_library_staff(new_issue_by_id)
);

-- Creating new table with name new_tbl_fine_due consisting of new_fine_id, new_member_id, new_issue_id, new_fine_date & new_fine_total
CREATE TABLE new_tbl_fine_due (
    new_fine_id INT PRIMARY KEY AUTO_INCREMENT,
    new_member_id INT,
    new_issue_id INT,
    new_fine_date DATE,
    new_fine_total INT,
    FOREIGN KEY (new_member_id) REFERENCES new_tbl_member(new_member_id),
    FOREIGN KEY (new_issue_id) REFERENCES new_tbl_book_issue(new_issue_id)
);

-- Creating new table with name new_tbl_fine_payment consisting of new_fine_payment_id, new_member_id, new_payment_date & new_payment_amount
CREATE TABLE new_tbl_fine_payment (
    new_fine_payment_id INT PRIMARY KEY AUTO_INCREMENT,
    new_member_id INT,
    new_payment_date DATE,
    new_payment_amount INT,
    FOREIGN KEY (new_member_id) REFERENCES new_tbl_member(new_member_id)
);

-- Creating new table with name new_tbl_book_request_status consisting of new_available_status_id, new_available_status & new_nearest_available_date
CREATE TABLE new_tbl_book_request_status (
    new_available_status_id INT PRIMARY KEY AUTO_INCREMENT,
    new_available_status VARCHAR(10),
    new_nearest_available_date DATE
);

-- Creating new table with name new_tbl_book_request consisting of new_request_id, new_book_id, new_member_id, new_request_date & new_available_status_id
CREATE TABLE new_tbl_book_request (
    new_request_id INT PRIMARY KEY AUTO_INCREMENT,
    new_book_id INT,
    new_member_id INT,
    new_request_date DATE,
    new_available_status_id INT,
    FOREIGN KEY (new_book_id) REFERENCES new_tbl_book(new_book_id),
    FOREIGN KEY (new_member_id) REFERENCES new_tbl_member(new_member_id),
    FOREIGN KEY (new_available_status_id) REFERENCES new_tbl_book_request_status(new_available_status_id)
);

-- Insert data into table new_tbl_author with new names
INSERT INTO new_tbl_author (new_first_name, new_last_name) 
VALUES 
('Raghav', 'Kumar'),
('Amit', 'Sharma'),
('Sandeep', 'Pandey'),
('Priya', 'Desai'),
('Vikash', 'Tiwari'),
('Manu', 'Bhatia'),
('Sonia', 'Gupta'),
('Rajeev', 'Rai'),
('Kiran', 'Mehta'),
('Anu', 'Nair'),
('Harish', 'Vishwakarma'),
('Ravi', 'Rajput'),
('Dinesh', 'Saxena'),
('Bhuvan', 'Joshi'),
('Shubham', 'Kapoor'),
('Deepak', 'Yadav'),
('Vijay', 'Kumar'),
('Shivani', 'Sharma'),
('Ankit', 'Singh');

-- Insert data into table new_tbl_category with new categories
INSERT INTO new_tbl_category (new_category_name)
VALUES
('Physics'),
('Biology'),
('Computer_Science'),
('Psychology'),
('Mathematics'),
('Medicine'),
('Literature'),
('Economics'),
('Philosophy'),
('Arts'),
('Engineering'),
('Law'),
('Sociology'),
('Business'),
('Sports');

-- Insert data into table new_tbl_publisher with new publishers
INSERT INTO new_tbl_publisher (new_publisher_name, new_publication_language, new_publication_type)
VALUES
('TechBooks', 'English', 'Technical'),
('BioPub', 'English', 'Medical'),
('MindPress', 'English', 'Psychology'),
('LearnMore', 'Hindi', 'Self-Help'),
('EduBooks', 'English', 'Educational'),
('WorldPress', 'Hindi', 'Science'),
('VenturePress', 'English', 'Business'),
('ReadSmart', 'Hindi', 'Literature'),
('IntelliBooks', 'English', 'Tech Journals'),
('CreativePress', 'English', 'Arts');

-- Insert data into table new_tbl_location with new shelf locations
INSERT INTO new_tbl_location (new_shelf_no, new_shelf_name, new_floor_no)
VALUES
('20201', 'Science_Library', 1),
('20202', 'Math_Library', 2),
('20203', 'Tech_Library', 3),
('20204', 'Engineering_Library', 4),
('20301', 'Medical_Library', 1),
('20302', 'Literature_Library', 2),
('20401', 'Business_Library', 3),
('20402', 'Economics_Library', 4);

-- Insert data into table new_tbl_book with new ISBN and book titles
INSERT INTO new_tbl_book (new_isbn_code, new_book_title, new_category_id, new_publisher_id, new_publication_year, new_book_edition, new_copies_total, new_copies_available, new_location_id)
VALUES
('9876547890123', 'Intro to Quantum Physics', 1, 1, '2023-01-01', 1, 12, 12, 1),
('9876547890124', 'Advanced Biology', 2, 2, '2022-12-01', 2, 8, 8, 2),
('9876547890125', 'Machine Learning Fundamentals', 3, 3, '2021-06-15', 1, 15, 15, 3),
('9876547890126', 'Psychology Insights', 4, 4, '2020-11-20', 3, 12, 12, 4),
('9876547890127', 'Applied Mathematics', 5, 5, '2019-09-30', 1, 20, 20, 5),
('9876547890128', 'Medical Research 101', 6, 6, '2023-03-12', 1, 5, 5,6);
