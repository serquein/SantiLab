use bank;
SELECT * FROM account;

SELECT client_id, birth_number FROM client;

SELECT *, amount - payments AS balance FROM bank.loan;
