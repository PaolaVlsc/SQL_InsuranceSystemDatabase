# General Insurance Database Management System

This is a database management system for a fictional General Insurance company PART 2.  

## Table of Contents
- [Triggers](#triggers)
- [Functions](#functions)
- [Stored Procedures](#stored-procedures)
- [Usage](#usage)

 
## Triggers

In continuation of step 01, several triggers have been implemented for updating customer information based on contract changes. These triggers ensure that the total cost of contracts and other customer data are kept up to date.

The `contract_insert` trigger (after insert on trigger) is a trigger that is invoked after an insert event occurs in the `contract` table. In our case, we set the trigger to be executed after an insert event in the `contract` table. Its purpose is to update the `con_sum` column of the `customer` table by adding the new cost (for the customer with the specific AFM) with which the `contract` table is updated.

The `contract_delete` trigger (after delete on trigger) is a trigger that is invoked after a delete event occurs in the `contract` table. In our case, we set the trigger to be executed after a delete event in the `contract` table. Its purpose is to update the `con_sum` column of the `customer` table by subtracting the new cost (for the customer with the specific AFM) with which the `contract` table is updated.

The `contract_update` trigger (after update on trigger) is a trigger that is invoked after an update event occurs in the `contract` table. In our case, we set the trigger to be executed after an update event in the `contract` table. Its function is to update the `con_sum` column of the `customer` table by executing a `SELECT` statement that calculates the sum of the costs from the `contract` table for the contracts signed by a specific customer.


## Functions
- `date_check()`: A function to calculate the duration of contracts in years.
A function takes a set of parameters or none and can return only one value. In this case, the function named `date_check` does not take any inputs, but it declares the following variables:

- `dStart Date`: a variable that will take values from `start_date`.
- `dEnd Date`: a variable that will take values from `end_date`.
- `contractDuration`: the "list" in which the results will be stored and returned by the function.

Initially, a cursor is defined, which allows you to traverse a set of rows returned by a query, and consequently, process each row separately. This way, the variables `dStart` and `dEnd`, defined earlier, will take the records from the `SELECT` statement executed in the cursor declaration, allowing you to process the returned values.

Then, a loop is created that runs for each entry in the `contract` table, calculating the contract's duration, which is stored in `@f`. Finally, in each iteration, the temporary `contractDuration` value is concatenated with the value of `@f`.


## Stored Procedures
- `getPayment_proc()`: A stored procedure to get payment information for a customer for a specific month.
We create a table called "monthlyPayment" that will contain the results of each call to the "getPayment_proc" function.

The "getPayment_proc" function takes, as input, the customer's tax identification number (ΑΦΜ) and a date. As output, it provides the number of active contracts and the amount the customer needs to pay for that month. The values for these outputs are stored in the programmer's variables as `@out_no` and `@out_no`, respectively, when the function is called.

 
## Authors
[Velasco Paola](https://github.com/PaolaVlsc?tab=repositories)

Kabouri Margarita
