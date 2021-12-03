UPDATE Users
SET Date_of_registration = substr(Date_of_registration, 7, 4) || '-' || substr(Date_of_registration, 4, 2) || '-' || substr(Date_of_registration, 1, 2);

SELECT Login FROM Users
WHERE Date_of_registration = (SELECT MAX(Date_of_registration) FROM Users);


SELECT DISTINCT(substr(Date_of_birthday, 1, 4)) FROM USERS;

select count(*) AS total_items  FROM Products;

SELECT AVG(date('now') - Date_of_birthday) FROM Users
WHERE date('now', '-2 months') >= Date_of_registration;