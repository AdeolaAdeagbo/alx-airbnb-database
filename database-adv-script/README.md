# Advanced SQL: Complex Joins

This folder contains SQL queries demonstrating different types of joins.

## Files
- **joins_queries.sql**: Contains the SQL queries.

## Queries
1. **INNER JOIN**  
   Retrieves all bookings and the respective users who made those bookings.

2. **LEFT JOIN**  
   Retrieves all properties and their reviews, including properties that have no reviews.

3. **FULL OUTER JOIN**  
   Retrieves all users and all bookings, even if the user has no booking or a booking is not linked to a user.
   > Note: MySQL does not support FULL OUTER JOIN directly. It can be simulated using a UNION of LEFT JOIN and RIGHT JOIN.
 
