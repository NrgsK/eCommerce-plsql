# eCommerce-plsql
# Database Management System

This repository contains an Oracle database management system designed for an e-commerce or product management application. Below is an overview of the database schema, SQL scripts, and usage instructions.

## Database Schema Overview

### Tables

1. **user_definition**
   - Stores basic user information.

2. **product**
   - Stores product details.

3. **category**
   - Defines product categories.

4. **sub_category**
   - Defines sub-categories.

5. **basket**
   - Manages user baskets.

6. **purchase**
   - Stores user purchase transactions.

7. **address**
   - Stores user address information.

8. **favorite**
   - Stores user favorite products.

### Sequences

- Sequences are used to generate auto-increment IDs for each table.

### Triggers

- Triggers are defined for some tables to retrieve the next value from a sequence before an insert operation.

## SQL Scripts

This repository includes the following SQL scripts:

- **product_mgmt_pkg**: Procedures and functions for product management operations.
- **cart_mgmt_pkg**: Procedures and functions for cart management operations.
- **basket_mgmt_pkg**: Procedures and functions for basket management operations.
- **login_pkg**: Procedures and functions for user login and registration operations.
- **purchase_mgmt_pkg**: Procedures and functions for purchase management operations.

## Usage

1. **Create the Database**: Use `create_db.sql` to create the database.
2. **Execute SQL Scripts**: Execute the relevant SQL scripts to create procedures and functions.
3. **Integration**: Integrate the database management system into your application.

## Notes

- Ensure thorough testing is conducted for each procedure and function.
- Enhancements should include security measures, input validations, and error handling improvements.

For more details, refer to the [SQL scripts](./sql_scripts/) folder.

