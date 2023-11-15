create table classes (
class_id int primary key not null,
class_name varchar(50)
);

create table instructors (
instructor_id int primary key not null,
instructor_name varchar(50),
);

create table students (
student_id int primary key not null,
student_name varchar(50),
class_id int foreign key references classes(class_id),
instuctor_id int foreign key references instructors(instructor_id),
);

--" Populate the Classes table with two classes:a. Software Developer Boot Campb. C# Boot Camp"--
insert into classes
values
(101,'Software Developer Boot Camp'),
(102,'C# Boot Camp')
;
--"Populate the Students table with six student names of your choosing."

insert into students (student_id, student_name, class_id, instructor_id)
	values
	(1,'Joe Jones',101, 5000),
	(2,'Sally Smith',102, 5001),
	(3,'Kathy Keller',101, 5000),
	(4,'Margo Miller',102,5001),
	(5,'Patrick Pepper',101, 5001),
	(6,'Bob Barker',102, 5001)
;

select*from students
--"Populate the Instructors table with two Instructor names of your choosing."--
	select*from instructors
	insert into instructors
	values
	(5000,'Joey Handzel'),
	(5001,'Rayna Branch')
;
--"Within the Students table, assign values to the Instructor_ID foreign key (i.e. assign one of the Instructors to half the students and the other Instructor to the other half of the students)."
select*from students
	order by class_id


--"Run a query to display all Instructor names."--
select*from instructors

--"Run a query to display all student names in alphabetical order."--
select *
	from students 
	order by student_name asc;

	--"Run a query that displays all classes, with the students and Instructors assigned to each."--

select*from students
select*from instructors
select*from classes

--"Run a query that displays all classes, with the students and Instructors assigned to each."--

select student_name, class_name,instructor_name
from students
inner join classes on
students.class_id=classes.class_id
inner join instructors on
students.instructor_id=instructors.instructor_id

select*from students
select*from instructors
select*from classes
