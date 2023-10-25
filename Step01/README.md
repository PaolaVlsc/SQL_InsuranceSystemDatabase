# General Insurance Database

This is a MySQL database for managing general insurance-related data. It includes tables for customers, insurance types, contracts, and more. 

# Table of Contents

1. [Files](#files)
2. [Introduction](#introduction)
3. [Database Structure](#database-structure) 
4. [Sample Data](#sample-data)
5. [SQL Queries](#sql-queries)
6. [Views](#views)
7. [Usage](#usage)
8. [Prerequisites](#prerequisites)
9. [Author Notes - Code](#author-notes-code)

## Files
1. The commands in the file `code.txt`.

2. ER Diagram of the database in the file `ER_DIAGRAM.png`.

3. Explanation and execution of the tasks in the files `General_Insurance.docx` (word document) and `General_Insurance.pdf`.

4. Backup of the Database in the file `general_insurance_project.sql`.


## Introduction 
This code sets up a database for a fictional insurance company and demonstrates the creation of tables, insertion of sample data, and the use of views to retrieve and modify data within the database. It also includes queries to extract meaningful information from the database for analysis.

## Database Structure

The database consists of the following tables:

- `customer`: Information about insurance customers.
- `coverage`: Types of service coverage.
- `insurance`: Details about insurance plans.
- `insurance_coverages`: A many-to-many relationship table connecting insurance plans and coverage types.
- `contract`: Records of insurance contracts signed.
- `insurance_customer`: A many-to-many relationship table connecting customers and insurance plans.

## Sample Data

Sample data has been included for some of the tables to illustrate how the database works.

## SQL Queries

Various SQL queries are included to demonstrate how to interact with the database. These queries cover inserting data, viewing data, and creating views. There are also queries for obtaining useful information from the database.

## Views

There are both updatable and non-updatable views, showcasing different scenarios. 

- `customerInfo`: An updatable view that allows viewing and updating customer information.
- `customerContract_view`: An updatable view that provides information about customers and their contracts.
- `customers_view3`: A safe, updatable view for customers with certain criteria.
- `cust_distinct_names`: A non-updatable view that displays distinct customer names.

## Usage

You can use this database as a foundation for building insurance management systems or as a learning resource for working with MySQL databases.

## Prerequisites

- MySQL server
- MySQL client
- Create a database named `General_Insurance` and run the SQL queries provided in the repository to set up the database.


 ## Author Notes - Code

### Ενδεικτικός γενικός πίνακας – Overview of General Insurance
<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/fe653447-e237-4b07-af80-65849b4203fc" width="50%">
</div>

### Μοντέλο Οντοτήτων Συσχετίσεων – Entity Relationship Model

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/775ad391-2ce2-4448-803f-c2f2b129dd56" width="50%">
</div>

### Three main entities / tables: customer, insurance, contract

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/233a37a3-23e7-4126-9878-54540d6a4c39" width="50%">
</div>

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/385984ee-0d41-4802-a598-c42908e97dc6" width="50%">
</div>

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/a6cf4d73-7671-4a23-9327-144e893172ae" width="50%">
</div>

### Sub tables: Coverage, Insurance_coverages, Insurance_customer

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/95aa03f1-4a50-4a3c-986b-c1f22e8a66c9" width="50%">
</div>

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/1c37a26c-6a99-4b9b-bbb6-f50ca9f9f5f1" width="50%">
</div>

### Διάγραμμα Οντοτήτων – Συσχετίσεων – Entity-Relationship Diagram (ER Diagram)

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/54984e84-7b4e-4394-8d57-7012296b1e17" width="50%">
</div>

## Authors
[Velasco Paola](https://github.com/PaolaVlsc?tab=repositories)

Kabouri Margarita
