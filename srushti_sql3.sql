create database college_2;
use college_2;
create table Department
( dept_id int primary key,
 dept_name varchar (50) unique not null);
create table Student_2
(roll_no int primary key,
 name varchar (50) not null,
 email varchar (50) unique,
 aadhar_no varchar(12) unique,
 dept_id int,
 foreign key (dept_id) references department(dept_id));
 create table Course
 (course_id int primary key,
 course_name varchar (50) not null,
 dept_id int,
 foreign key (dept_id) references Department(dept_id));
 create table Enrollment
 (roll_no int,
 course_id int,
 semester int check (semester between 1 and 8),
 grade char(2),
 primary key (roll_no,course_id,semester),
 foreign key (roll_no) references Student_2 (roll_no),
 foreign key (course_id) references Course (course_id));
 insert into Department (dept_id,dept_name)
values(1,'CSE'),
(2,'ECE');
 select*from department;
 insert into student_2(roll_no,name,email,aadhar_no,dept_id)
 values (101,'Suresh','suresh@gmail.com','123456789123',1),
 (201,'Rajesh','rajesh@gmail.com','987654321987',2);
 select*from student_2;
 insert into course (course_id,course_name,dept_id)
 values(1,'UHV',1),
 (2,'FLIC',2);
 select*from course;
 insert into enrollment(roll_no,course_id,semester,grade)
 values (101,1,1,'B'),
 (201,2,3,'A');
 select*from enrollment;