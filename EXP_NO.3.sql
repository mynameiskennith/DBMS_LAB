create table BOOK (Book_Id int, 
                  Title varchar(30), 
                  MRP int, 
                  Published_Date varchar(10), 
                  Volume int, 
                  Status varchar(10),
                  Publisher_Id int,
                  Language_Id int,
                  Primary key(Book_Id),
                  foreign key(Publisher_Id) references PUBLISHER(Publisher_Id),
                  foreign key(Language_Id) references LANGUAGE(Language_Id)
);

create table AUTHOR(Author_Id int primary key, 
                    Name varchar(20), 
                    Email varchar(30), 
                    Phone_Number int, 
                    Status varchar(10));

create table BOOK_AUTHOR(Book_Id int, 
                        Author_Id int,
                        primary key(Book_id,Author_id),
                        foreign key(Book_Id) references BOOK(Book_Id),
                        foreign key(Author_Id) references AUTHOR(Author_ID)
                        );

create table BOOK_ISSUE(Issue_Id int, 
                        Date_Of_Issue date, 
                        Book_Id int, 
                        Member_Id int, 
                        Expected_Date_Of_Return date, 
                        Status varchar(10),
                        foreign key(Book_Id) references BOOK(Book_Id),
                        foreign key(Member_Id) references MEMBER(Member_Id)
                        );

create table BOOK_RETURN(Issue_Id int, 
                        Actual_Date_Of_Return date, 
                        LateDays int, 
                        LateFee int,
                        primary key (Issue_Id),
                        foreign key(Issue_Id) references Book_Issue(Issue_Id)
                        );

create table LATE_FEE_RULE(FromDays int, 
                          ToDays int, 
                          Amount int,
                          primary key(ToDays,FromDays)
                          );

insert into author
  values(1,'Don','Don@hmail.com"',635987725,'Good');

insert into author
  values (2,'Duss','Duss@hmail.com',635954525,'average');

insert into author
  values (3,'Dede','Dede@hmail.com',635923425,'Bad');

alter table AUTHOR rename to author_list;
