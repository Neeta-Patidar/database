
create database EXAM;

create table user(
   id INT AUTO_INCREMENT PRIMARY KEY ,
   name VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL,
   phone VARCHAR(255) NOT NULL,
   password VARCHAR(255) NOT NULL,
   role VARCHAR(255) NOT NULL
);

insert into user(name,email,phone,password,role) values("Ritu","ritu@123gmail.com","9876543241","ritu","owner");

insert into user(name,email,phone,password,role) values("Jyoti","jyoti@123gmail.com","9887653241","jyoti","librarian");

insert into user(name,email,phone,password,role) values("Shweta","shweta@123gmail.com","9887653241","shweta","member");


 CREATE TABLE payment(
    id INT AUTO_INCREMENT PRIMARY KEY ,
   amount FLOAT NOT NULL,
   type VARCHAR(255) NOT NULL,
   transaction_time datetime NOT NULL,
   nextpayment_duedate  datetime NOT NULL,
   userid INT,
   FOREIGN KEY (userid) REFERENCES user(id)
); 

insert into payment(amount,type,transaction_time,nextpayment_duedate,userid) values(12345.00,"fee","2001-06-02 10:34:09","2002-07-12 12:34:09",1);

insert into payment(amount,type,transaction_time,nextpayment_duedate,userid) values(18865.00,"fee","2020-06-02 4:34:09","2022-07-12 1:34:09",2);

insert into payment(amount,type,transaction_time,nextpayment_duedate,userid) values(12986.00,"fee","2005-06-02 10:34:09","2012-07-12 12:34:09",3);





create table books(
   id INT AUTO_INCREMENT PRIMARY KEY ,
   name VARCHAR(255) NOT NULL,
   author VARCHAR(255) NOT NULL,
   subject VARCHAR(255) NOT NULL,
   price FLOAT NOT NULL,
   isbn VARCHAR(255) NOT NULL
);

insert into books(name,author,subject,price,isbn) values("sandeep","C language","primer",9876.09,'');

insert into books(name,author,subject,price,isbn) values("Yeshwant","C language","Effective Modern C++",9876,'');


insert into books(name,author,subject,price,isbn) values("Jarge","C++ language","Effective Modern C++",98654,'');


CREATE TABLE copies(
    id INT AUTO_INCREMENT PRIMARY KEY ,
    rack INT NOT NULL,
    status VARCHAR(255) NOT NULL,
   bookid INT,
   FOREIGN KEY (bookid) REFERENCES books(id)
); 


insert into copies(rack,status) values(2,"Available",1);

CREATE TABLE issuerecord(
   id INT AUTO_INCREMENT PRIMARY KEY ,
   issue_date datetime NOT NULL,
   return_duedate  datetime NOT NULL,
   return_date datetime NOT NULL,
   fine_amount FLOAT NOT NULL,
   memberid INT,
   copyid INT,
   FOREIGN KEY (memberid) REFERENCES user(id),
   FOREIGN KEY (copyid) REFERENCES copies(id)
); 


insert into issuerecord(copyid,memberid,issue_date,return_duedate,return_date,fine_amount) values(3,1,"2001-06-02 10:34:09","2002-07-12 12:34:09","2002-07-12 12:34:45",88);

insert into issuerecord(copyid,memberid,issue_date,return_duedate,return_date,fine_amount) values(4,2,"2013-05-02 10:34:09","2014-07-12 12:34:09","2015-07-12 11:30:45",80);

insert into issuerecord(copyid,memberid,issue_date,return_duedate,return_date,fine_amount) values(5,3,"2005-07-02 10:34:09","2006-07-12 12:34:09","2007-07-12 09:34:45",50);

