CREATE DATABASE bank_system;
USE bank_system;

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(50),
    balance DECIMAL(10,2)
);

INSERT INTO accounts VALUES
(101, 'Ravi', 5000.00),
(102, 'Anita', 3000.00),
(103, 'Kiran', 7000.00);

START TRANSACTION;

UPDATE accounts
SET balance = balance - 1000
WHERE account_id = 101;

UPDATE accounts
SET balance = balance + 1000
WHERE account_id = 102;

COMMIT;

START TRANSACTION;

UPDATE accounts
SET balance = balance - 2000
WHERE account_id = 101;

ROLLBACK;

START TRANSACTION;

UPDATE accounts
SET balance = balance - 500
WHERE account_id = 103;

SAVEPOINT after_deduction;

UPDATE accounts
SET balance = balance + 500
WHERE account_id = 102;

-- Suppose error occurs
ROLLBACK TO after_deduction;

COMMIT;

SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
START TRANSACTION;

UPDATE accounts
SET balance = 0
WHERE account_id = 102;

START TRANSACTION;

SELECT * FROM accounts
WHERE account_id = 101
FOR UPDATE;
