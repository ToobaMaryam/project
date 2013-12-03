create database CCC;


grant all on CCC.* to tooba@localhost identified by 'tooba';
use CCC;


create table Parents

(P_Id varchar(5) not null primary key ,

P_Name varchar(20),

P_Gender varchar(10),

P_Address varchar(25)
P_Cell varchar(20)
);

create table Children
(
C_Id varchar(5) not null primary key,

C_Name varchar(20) ,

C_Gender varchar(10),

C_Age int unsigned ,

C_Medical varchar(15)
foreign key (P_Id) references Parents(P_Id)
);



create table Bills
(
B_Id varchar(5) not null primary key,

B_Status varchar(20) ,

B_Amount varchar(15),


B_IDate varchar(15)
foreign key (P_Id) references Parents(P_Id)
);



create table Payments
(
P_Id varchar(5) not null primary key,

P_Date varchar(20) ,

P_Amount varchar(15),
foreign key (B_Id) references Bills(B_Id)
);



