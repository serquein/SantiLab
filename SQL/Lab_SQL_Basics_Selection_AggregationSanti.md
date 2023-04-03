use bank;
#Query 1. Get the id values of the first 5 clients from district_id with a value equal to 1.
SELECT client_id FROM client 
WHERE district_id = 1
LIMIT 5;

#Query 2. In the client table, get an id value of the last client where the district_id is equal to 72.
SELECT client_id FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

#Query 3. Get the 3 lowest amounts in the loan table.
SELECT amount FROM loan
ORDER BY amount 
LIMIT 3;

#Query 4. What are the possible values for status, ordered alphabetically in ascending order in the loan table?
SELECT DISTINCT status  FROM loan
ORDER BY status;

#Query 5. What is the loan_id of the highest payment received in the loan table?
SELECT loan_id FROM loan
ORDER BY payments DESC
LIMIT 1
