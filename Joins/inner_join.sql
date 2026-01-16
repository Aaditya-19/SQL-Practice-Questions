/*
Problem:
Report the first name, last name, city, and state of each person.
If the address does not exist, return NULL.

Concept:
LEFT JOIN

Solution:
*/

SELECT 
    firstName,
    lastName,
    city,
    state
FROM Person 
LEFT JOIN Address 
ON person.personId = address.personId;
