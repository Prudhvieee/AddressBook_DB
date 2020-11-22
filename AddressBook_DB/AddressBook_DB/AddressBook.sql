/*
UC-1
 Creating the Address book Database
*/
create database AddressBook_Service;
use AddressBook_Service;
/*
UC-2
Creating Address book table
*/
create table AddressBook_Table
( firstName varchar(50) not null,
 secondName varchar(50) not null,
 address varchar(50) not null,
 city varchar(50) not null,
 state varchar(50) not null,
 zip bigint not null,
 phoneNumber bigint not null,
 emailId varchar(50) not null
 );
 /*
 UC-3
  Inserting contacts to AddressBook_Table.
 */
 insert into AddressBook_Table (firstName, secondName, address, city, state, zip, phoneNumber, emailId)
 values
 ('Prudhvi', 'Reddy', 'Vasavi Nagar', 'tpty', 'Andhra Pradesh', 9087654321, 517502, 'prudhvi@gmail.com'),
 ('jerry', 'don', 'esteem street', 'Silicon valley', 'America', 9876543230, 500082, 'jerry@gmail.com'),
 ('tom', 'Spinach', 'Mount street', 'SFO', 'CA', 3216547890, 98754, 'TOM@gmail.com');
 /*
  Displaying the contacts from table
 */
 select * from AddressBook_Table
 /*
 UC-4
 Edit existing contact using their name
 */
 update AddressBook_Table set address = 'DA Street' 
where firstName = 'Prudhvi' and secondName = 'Reddy';
/*
UC-5
Delete data from the address book table where name matches 
*/
delete from addressBook_Table where firstName ='tom' and secondName = 'Spinach';
/*
 UC-6
 Displaying the contact from the address book table matching the state 
*/
 select * from AddressBook_Table where state = 'Andhra Pradesh';
/*
 Displaying the contact from the address book table matching the city 
*/
 select * from AddressBook_Table where city = 'tpty';
  /*UC-7
 Displaying the count of contacts by city*/
 select city,count(*) as 'Number of Contacts' from AddressBook_Table group by city;
 /* displaying the count of contacts by state*/
 select state,count(*) as 'Number of Contacts' from addressBook_Table group by state;
 /*
  UC-8
  Sorting alphabetically in ascending order by the name and belonging to a city
 */
 select * from AddressBook_Table
 where city = 'SFO'
 order by firstName;
 /*
  UC-9
  Adding the columns for address book  */
 alter table AddressBook_Table add addressBookType varchar(30), addressBookName varchar(40);
/* Renaming the addressBookType columns to contactType in the address book table */
EXEC sp_rename 'AddressBook_Table.addressBookType', 'contactType';
UPDATE AddressBook_Table
SET contactType = 'Friend'
WHERE firstName = 'Prudhvi';

UPDATE AddressBook_Table
SET contactType = 'Family'
WHERE firstName = 'p';

UPDATE AddressBook_Table
SET contactType = 'Profession'
WHERE firstName = 'B' ;
/* UC-10 Getting the contact count grouping by the contact type */
select contactType, COUNT(*) as 'Number Of Contacts' from addressBook_Table group by contactType;
/* UC-11 Adding contact as family type*/
insert into AddressBook_Table (firstName, secondName, address, city, state, zip, phoneNumber, emailId)
 values('p','Ravi','SR','HYD','TS',89898,0987654321,'Ravi@gmail.com');
 /*UC-12
 Implementing ER diagrams*/

 CREATE TABLE Contact
(PersonId int NOT NULL PRIMARY KEY identity(1,1),
first_name VARCHAR(30) NOT NULL ,
last_name varchar(25) not null,
Address varchar(60) not null,
City varchar(15) not null,
State varchar(20) not null,
Zip varchar(6) not null,
Phone_Number varchar(12) not null);
alter table Contact add Contact_TypeID int FOREIGN KEY REFERENCES Contact_Type(Contact_typeID);
INSERT INTO Contact VALUES
( 'Black','Panther','Mount road','CA','usa',90908,'9876543210',1),
('Tony','stark','ST Road','vegas','USA',67676,'8765432190',2),
('Peter','Spidy','100 road','los angles','NY',34354,'909876564',1),
('captain','America','112 road','Sandiego','CA',89786,'4567893412',2),
('Robert','droweny','alt francis road.','london','uk',9087,'987534675',3);
select * from Contact;
create table Contact_Type
(Contact_typeID int not null Primary Key,
Contact_Type varchar(20) not null );
select * from Contact_Type;
INSERT into Contact_Type VALUES 
(1,'Friends'),
(2,'Professional'),
(3,'Family');

CREATE TABLE Contact_BookName
(PersonId int FOREIGN KEY REFERENCES Contact(PersonId),
BookID int not null PRIMARY KEY identity(1,1),
Book_name VARCHAR(30) NOT NULL);
select * from Contact_BookName;
INSERT INTO Contact_BookName
VALUES(1,'MyBook'),
(2,'Office'),
(3,'Friends'),
(4,'college'),
(5,'Another');