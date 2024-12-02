-- 1.1. Adding Multiple Expenses:
-- Write an INSERT statement to add several new expense records to your Expense Tracker at once. 
-- Include details like amount, date, and category (e.g., record grocery purchases, office supplies, and travel costs for a specific date with their respective amounts). 
-- Consider using multiple VALUES clauses within a single INSERT statement for efficiency.

-- Adding multiple expense records in one INSERT statement
INSERT INTO expenses (amount, expense_date, category)
VALUES
(50.00, '2023-12-01', 'Grocery'),
(150.00, '2023-12-02', 'Office Supplies'),
(200.00, '2023-12-03', 'Travel');


-- 1.2. Updating Expense Information:
-- Modify an existing expense record in your Expense Tracker. You can change details like the amount, date, or category for a specific expense ID. 
-- Demonstrate the use of a WHERE clause to target the exact record you want to update.

-- Updating a specific expense record by expense ID
UPDATE expenses
SET amount = 75.00, expense_date = '2023-12-05', category = 'Office Supplies'
WHERE expense_id = 2;


-- 1.3. Selective Data Deletion:
-- Create a copy of your "Expenses" table. Practice deleting records using DELETE on this copy, focusing on entries with specific criteria. 
-- Here are a couple of options:
-- - Delete expense entries where the amount is zero.
-- - Delete expense entries from a specific date range (e.g., delete all expenses before July 1st, 2023). 
-- Remember: Perform these deletions on your copy to avoid modifying your main data set.

-- Deleting records where the amount is zero
DELETE FROM expenses_copy
WHERE amount = 0;

-- Deleting records before July 1st, 2023
DELETE FROM expenses_copy
WHERE expense_date < '2023-07-01';


-- Bonus Challenge: Handling NULL Values
-- Check if there are any NULL values in your "Expenses" table. If so, explore how you might handle them using conditional updates or setting default values. 
-- Consider the feasibility of these approaches based on your sample data.

-- Checking for NULL values in the amount column
SELECT * FROM expenses
WHERE amount IS NULL;

-- Handling NULL values by setting a default value for expenses with NULL amounts
UPDATE expenses
SET amount = 0.00
WHERE amount IS NULL;
