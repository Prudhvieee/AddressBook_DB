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
