Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]: postgres
Password for user postgres:
//Connecting database
postgres=# \c upgrad
upgrad=# CREATE TABLE Transaction( Check_no  TEXT    , Company_id TEXT      , Date TEXT      , Amount TEXT      );
CREATE TABLE  
upgrad=# CREATE TABLE Company( Company_id TEXT     , Company_name TEXT      );
CREATE TABLE
upgrad=# INSERT INTO transaction(Check_no, Company_id, Date, Amount) VALUES ('SBI1234','B','18/01/2020','19877');
INSERT 0 1
upgrad=# INSERT INTO transaction(Check_no,Company_id,Date,Amount) VALUES ('AXIS2476', 'D','23/05/2020','20876');
INSERT 0 1
upgrad=# INSERT INTO transaction(Check_no,Company_id,Date,Amount) VALUES ('HDFC7612', 'B','09/09/2020','45261');
INSERT 0 1
upgrad=# INSERT INTO transaction(Check_no,Company_id,Date,Amount) VALUES ('ICICI1010', 'E','12-12-2020','10298');
INSERT 0 1
upgrad=#
upgrad=# INSERT INTO Company( Company_id , Company_name ) VALUES ('A' , 'Huynadai');
INSERT 0 1
upgrad=# INSERT INTO Company( Company_id , Company_name ) VALUES ('B' , 'Toyota');
INSERT 0 1
upgrad=# INSERT INTO Company( Company_id , Company_name ) VALUES ('C' , 'Tata');
INSERT 0 1
upgrad=# INSERT INTO Company( Company_id , Company_name ) VALUES ('E' , 'Ford');
INSERT 0 1
upgrad=# INSERT INTO Company( Company_id , Company_name ) VALUES ('F' , 'Maruti');
INSERT 0 1
upgrad=# \dt company
          List of relations
 Schema |  Name   | Type  |  Owner
--------+---------+-------+----------
 public | company | table | postgres
(1 row)


upgrad=# \dt transaction;
            List of relations
 Schema |    Name     | Type  |  Owner
--------+-------------+-------+----------
 public | transaction | table | postgres
(1 row)


upgrad=# select * from company;
 company_id | company_name
------------+--------------
 A          | Huynadai
 B          | Toyota
 C          | Tata
 E          | Ford
 F          | Maruti
(5 rows)


upgrad=# select * from transaction;
 check_no  | company_id |    date    | amount
-----------+------------+------------+--------
 SBI1234   | B          | 18/01/2020 | 19877
 AXIS2476  | D          | 23/05/2020 | 20876
 HDFC7612  | B          | 09/09/2020 | 45261
 ICICI1010 | E          | 12-12-2020 | 10298
(4 rows)
upgrad=# SELECT transaction.Check_no, transaction.Date, transaction.Amount FROM transaction INNER JOIN Company ON transaction.Company_id = Company.Company_id;
 check_no  |    date    | amount
-----------+------------+--------
 SBI1234   | 18/01/2020 | 19877
 HDFC7612  | 09/09/2020 | 45261
 ICICI1010 | 12-12-2020 | 10298
(3 rows)
