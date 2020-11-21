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