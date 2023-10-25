# General Insurance Database Management System

This is a database management system for a fictional General Insurance company. It includes tables for customers, insurance plans, contracts, coverages, and more. This README provides an overview of the project and its components.

## Table of Contents

- [Database Structure](#database-structure)
- [Data Insertion](#data-insertion)
- [Database Views](#database-views)
- [Triggers](#triggers)
- [Stored Procedures](#stored-procedures)
- [Usage](#usage)

## Database Structure

The database consists of the following tables:

- `customer`: Stores customer information.
- `coverage`: Describes different types of service coverage.
- `insurance`: Contains insurance plan details.
- `insurance_coverages`: Associates insurance plans with coverage types.
- `contract`: Manages contract information.
- `insurance_customer`: Relates customers to insurance plans.

## Data Insertion

The system allows for data insertion into various tables, such as customers, coverage types, insurance plans, insurance coverages, and contracts. Sample data has been provided as an example.

## Database Views

- `customerInfo`: An updatable view that allows viewing and updating customer information.
- `customerContract_view`: An updatable view that provides information about customers and their contracts.
- `customers_view3`: A safe, updatable view for customers with certain criteria.
- `cust_distinct_names`: A non-updatable view that displays distinct customer names.

## Triggers

Several triggers have been implemented for updating customer information based on contract changes. These triggers ensure that the total cost of contracts and other customer data are kept up to date.

## Stored Procedures

- `date_check()`: A stored procedure to calculate the duration of contracts in years.
- `getPayment_proc()`: A stored procedure to get payment information for a customer for a specific month.

## Usage

To use this database management system, you can follow these steps:

1. Create a MySQL database and execute the SQL script provided.
2. Insert data into the tables to populate the database.
3. Use the views to query and update customer and contract information.
4. Explore the triggers and stored procedures for automated updates and calculations.

Feel free to modify the code and adapt it to your specific needs.

Please refer to the SQL script for detailed code and examples.

## Authors

- [Your Name](https://github.com/yourusername)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
