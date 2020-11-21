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
 select * from addressBook_Table