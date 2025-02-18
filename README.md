# Brainwave_Matrix_Intern
Relational Database Library Management System 
Introduction
The Library Management System is a project designed to help libraries manage their operations effectively. It handles tasks such as managing books, authors, members, and staff, tracking book issues and returns, processing fines, and handling book requests.

Features
This system provides the following features:

Book Management: Add, update, and manage books with details like title, ISBN code, publisher, category, and location.
Member Management: Add and track library members' information, membership status, and contact details.
Book Issuing & Returning: Track when books are issued to members and manage their return dates.
Fines Management: Calculate and record fines for overdue books and handle payments.
Book Requests: Allow members to request books that are not available, with a status on availability.
How the System Works
The system organizes the library's data into multiple tables, each focused on specific aspects of library management:

Book Data: Information about books, including authors, categories, publishers, and shelf locations.
Member Data: Information about library members and their active membership status.
Staff Data: Information about the staff responsible for issuing books to members.
Book Transactions: Details about the books issued to members, along with their due dates and fines.
Book Requests: Allows members to request books and track availability.
Database Structure
The database consists of the following tables:

tbl_category: Stores book categories (e.g., Fiction, Non-fiction, Engineering).
tbl_publisher: Stores publishers' details (e.g., publisher name, language, and publication type).
tbl_location: Stores shelf and floor details for book locations within the library.
tbl_author: Stores authors' first and last names.
tbl_book: Stores book details like title, ISBN, edition, and available copies.
tbl_book_author: Links books to their respective authors.
tbl_member_status: Tracks the status of each member (active, expired, etc.).
tbl_member: Stores information about library members (name, contact, etc.).
tbl_library_staff: Stores information about staff members who issue books.
tbl_book_issue: Tracks issued books, including the issue and return dates.
tbl_fine_due: Stores fines for overdue books.
tbl_fine_payment: Records fine payments made by members.
tbl_book_request_status: Stores the status of book requests (e.g., available, on request).
tbl_book_request: Tracks book requests by members.
Prerequisites
Prerequisites
To set up this system, you need:

MySQL (or any other SQL-based database management system).
A SQL client like MySQL Workbench, phpMyAdmin, or Command Line to run the SQL queries.

