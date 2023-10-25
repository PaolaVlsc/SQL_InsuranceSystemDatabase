# General Insurance Database

This is a MySQL database for managing general insurance-related data. It includes tables for customers, insurance types, contracts, and more. 

# Table of Contents

1. [General Insurance Database](#general-insurance-database)
2. [Introduction](#introduction)
3. [Database Structure](#database-structure) 
4. [Sample Data](#sample-data)
5. [SQL Queries](#sql-queries)
6. [Views](#views)
7. [Usage](#usage)
8. [Prerequisites](#prerequisites)
9. [Author Notes - Code](#author-notes-code)


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

Views have been created to demonstrate how to use them. There are both updatable and non-updatable views, showcasing different scenarios.

## Usage

You can use this database as a foundation for building insurance management systems or as a learning resource for working with MySQL databases.

## Prerequisites

- MySQL server
- MySQL client
- Create a database named `General_Insurance` and run the SQL queries provided in the repository to set up the database.


 ## Author Notes - Code

### Ενδεικτικός γενικός πίνακας – Overview of General Insurance

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/bf2ce51a-8ad4-4b1f-96d1-00ee99fd3f33" width="50%">
</div>

### Μοντέλο Οντοτήτων Συσχετίσεων – Entity Relationship Model

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/44adaa19-cba8-4e58-b940-6b8c0fceb14e" width="50%">
</div>

### Three main entities / tables: customer, insurance, contract

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/29e6bb77-9259-4c1b-9a5f-76f62d462ce3" width="50%">
</div>

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/8d551ab4-817c-4b9d-9fed-c47f61e62c09" width="50%">
</div>

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/dd7e77ba-a743-4eee-8b6f-b6b6bda38acf" width="50%">
</div>

### Sub tables: Coverage, Insurance_coverages, Insurance_customer

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/46cb8414-de26-4eab-8183-e04893d0955f" width="50%">
</div>

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/2d10f3d3-25cb-4792-a687-8ca3bafcec5e" width="50%">
</div>

### Διάγραμμα Οντοτήτων – Συσχετίσεων – Entity-Relationship Diagram (ER Diagram)

<div align="center">
  <img src="https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/8c917e4a-eddd-4e07-bd2e-3ad34ac27287" width="50%">
</div>
