use library;
Create table user(
UserId int(10)  not null,
FirstName varchar(20) not null,
SecondName varchar(20) not null,
Gender varchar(10) not null,
Address varchar(45) not null,
ContactNo varchar(20) not null,
constraint User_PK primary key(UserId)
); 

  create table book(
 BookId int(10) not null,
BookName varchar(20) not null,
AuthorName varchar(20) not null,
 constraint book_PK primary key(BookId)

 );

create table borrowBook(
BorrowId int(10) not null,
 -- `UserId` int(10) not null,
 -- `BookId` int(10) not null,
 --  DateBorrowed date not null,
DueDate date  not null,
constraint borrowBook_pk primary key(BorrowId),
constraint user_fk foreign key(UserId)
references user(UserId),
constraint book_fk foreign key(BookId)
references book(BookId)
);

create table staff(
StaffId int(10) not null,
FirstName varchar(20) not null,
SecondName varchar(20) not null,
Gender varchar(10) not null,
Address varchar(30) not null,
ContactNo varchar(20) not null,

constraint staff_pk primary key (StaffId)
);