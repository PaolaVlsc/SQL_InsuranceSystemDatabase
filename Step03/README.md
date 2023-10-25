# General Insurance Web App php
In continuation of the previous step02, here a web application was developed for managing the insurance products of the database using PHP and HTML technologies. 

# Table of Contents
1. [Introduction](#introduction)
2. [Files](#files)
3. [Usage](#usage)
4. [Create a New User](#create-a-new-user)
5. [Pages](#pages)
   - [index.html](#index.html)
   - [view_products.html](#view_products.html)
   - [menuproducts.html](#menuproducts.html)
   - [prod_per_client.php](#prod_per_client.php)
   - [clientoption.html](#clientoption.html)
   - [clientpayment.php](#clientpayment.php)
6. [Author](#author)



## Introduction
The application consists of the following pages:

- A page that displays all insurance products.
- A page where the user can select an insurance product from a dropdown list. After selecting a product, the page will display the customers (their details) who have signed at least one contract for the selected insurance product.
- A page where the user can enter a customer's AFM (Tax Identification Number) and a date. The page will return the number of contracts held by that customer for the specified month and the total amount they need to pay for that month.

## Files
Screenshots folder - Results in images 
Final.pdf - Explanatory document in pdf format
Database_backup_project.sql - Backup of our database
In the General Insurance folder:
- images - General insurance logo
- client_payment.php  
- clientoption.html  
- index.html - Host page
- menuproducts.html  
- prod_per_client.php  
- view_products.php  

## Usage

- Create three .html pages initially:
  1. Index.html
  2. Menuproducts.html
  3. Clientoption.html
- One of them will serve as a 'table of contents' that leads to a new page with a button for each step of the task. Each of the pages that opens as a result will have the option to return to the table of contents or repeat the action it is designed to perform.
- Additionally, there are three PHP scripts:
  1. Client_payment.php
  2. Prod_per_client.php
  3. View_products.php
- These scripts execute the queries and create the tables described in the assignment.
- Note that to 'run' the files, you need to have Apache running and the files in a unified folder located in the htdocs folder of XAMPP.

## Create a New User

To establish a connection between the database and the server, you need to create a new user to whom you will assign all privileges, enabling them to manage the database without restrictions.

You can create a new user with the following commands:

```sql
create user '<username>'@'localhost' identified by '1234';
grant all privileges on general_insurance.* to '<username>'@'localhost';
alter user <username>@localhost identified with mysql_native_password by '1234';
```
Afterward, to connect as this user to the database, you can execute the following command in the command prompt:

```bash
mysql -u <username> -p
```
Replace <username> with the desired username for your user. Make sure to securely manage your credentials and adjust as needed.
![image](https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/d35679de-afa1-4898-8e51-e674245a94a0)

## Pages

### index.html
![image](https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/abc77d9d-5886-42c7-9135-3572f7b36ebd)


### view_products.html
![image](https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/d79cf3d7-6b78-4b34-b6eb-117d16040319)

### menuproducts.html
![image](https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/a8a1cf04-c839-4879-8349-10c2c6611a25)

### prod_per_client.php
![image](https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/52dcbe5b-984b-4db8-a6f1-fde9d2dc47a1)


### clientoption.html
![image](https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/4adc269d-8687-4e47-9978-e27a4211859d)

### clientpayment.php
![image](https://github.com/PaolaVlsc/SQL_InsuranceSystemDatabase/assets/87998374/929bc1b6-0934-404d-9dae-6fd79f27d7f1)

## Author
[Velasco Paola](https://github.com/PaolaVlsc)

Kabouri Margarita
