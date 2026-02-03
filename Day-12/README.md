# SQL Constraints Mini Guide

This project demonstrates the use of SQL constraints to enforce data integrity at the database level.

## Concepts Covered
- CHECK constraints for validating numeric ranges
- DEFAULT values for columns and timestamps
- UNIQUE constraints to prevent duplicate data
- Combining multiple constraints on a single column
- Testing constraint violations intentionally
- Understanding constraint enforcement order
- Comparing application-level vs database-level validation
- Documenting constraint design decisions

## Why Constraints Matter
Database-level constraints ensure data consistency and safety even when application-level validation fails.

## How to Use
Run the SQL queries sequentially in your SQL environment (PostgreSQL/MySQL).  
Try inserting invalid data to observe constraint enforcement.

## Key Takeaway
Always prefer database-level constraints for critical data validation.
