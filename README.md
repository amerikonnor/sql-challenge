This project uses the SQLAlchemy package in Python to connect to a Postgres database and run some analysis on employee data from a company.

First a table schema was created and run in Postgres, including primary and foreign keys. CSV files were then uploaded into the tables.

Next, we use jupyter notebook to do the analysis. Using SQLAlchemy, a connection to the database is established. The analysis performed includes finding the number of employees in different salary ranges, the average salary for each employee title, as well finding out who the lowest paid employee is (the project had a bonus activity that gave you your employee number, and your were the lowest paid employee!).

The project also contains an ERD to show how the tables and keys work together in the database.
