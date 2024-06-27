# eCommerce-plsql
Database Management System
This project contains an Oracle database management system designed to support an e-commerce or product management system. Below, you will find information about the SQL scripts and database objects included in this repository.

Used Database Objects and Relationships
Tables
user_definition
Stores basic user information.
product
Stores product details.
category
Defines product categories.
sub_category
Defines sub-categories.
basket
Manages user baskets.
purchase
Stores user purchase transactions.
address
Stores user address information.
favorite
Stores user favorite products.
Sequences
Sequences are used to generate auto-increment IDs for each table.
Triggers
Triggers are defined for some tables to retrieve the next value from a sequence before an insert operation.
SQL Scripts
This repository includes the following SQL scripts:

product_mgmt_pkg: Procedures and functions for product management operations.
cart_mgmt_pkg: Procedures and functions for cart management operations.
basket_mgmt_pkg: Procedures and functions for basket management operations.
login_pkg: Procedures and functions for user login and registration operations.
purchase_mgmt_pkg: Procedures and functions for purchase management operations.
How to Use
Create the Database: Use create_db.sql to create the database.
Execute SQL Scripts: Execute the relevant SQL scripts to create procedures and functions.
Integrate with Your Application: Integrate the database management system into your application.
Notes
Ensure thorough testing is conducted for each procedure and function.
Enhancements should include security measures, input validations, and error handling improvements.
