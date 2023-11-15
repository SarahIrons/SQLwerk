create table branch (
branch_id int primary key, 
branch_name varchar(50),
address varchar(100)
);

create table borrower (
cardNo int primary key,
Name varchar (100),
address varchar (100),
phone varchar (12)
);

create table book_copies (
book_id int foreign key references books,
branch_id int foreign key references branch,
Number_of_Copies int
);

create table book_loans (
book_id int foreign key references books,
branch_id int foreign key references branch,
cardNo int foreign key references borrower,
DateOut date,
DateDue date,
);

create table books (
book_id int primary key,
title varchar (200),
publisherName varchar(100) foreign key references publisher,  
);

create table publisher (
publisherName varchar(100) primary key,
address varchar (200),
phone varchar (12)
);

create table book_authors(
book_id int foreign key references books,
author_name varchar (200)
);

select*from branch
select*from borrower
select*from book_authors
select*from book_copies
select*from publisher
select*from books
select*from book_loans

--"Insert into the LIBRARY_BRANCH table 6 values of your choosing with the exception that one branch name is “Sharpstown.” Create values for the following columns: BranchName and BranchAddress."--
insert into branch
values
(123,'Ashtyn','Harbertown 28814'),
(124,'Stroman','Aianafort 09480'),
(125,'Sharpstown','Fridatown 68289'),
(126,'Linwood','Anitabury 35688'),
(127,'Predovic','Juddhaven 64526'),
(128,'Fahey','Elian 39295')
;
--"Insert into the BORROWER table 8 values of your choosing for the following columns: CardNo, Name, Address and Phone."--

insert into borrower 
values
(7001, 'Rudie Olufsen', '76568 Doe Crossing Street', '373-517-5888'),
(7002, 'Merline Challiner', '448 Mendota Road', '503-544-7420'),
(7003, 'Emmalyn Downgate', '59 Bultman Trail', '635-246-8916'),
(7004, 'Flori Burry', '2577 4th Parkway', '444-491-4007'),
(7005, 'Bari Barti', '30 Di Loreto Place', '452-172-6603'),
(7006, 'Perle Quadrio', '44 Vernon Street', '738-270-0269'),
(7007, 'Ingmar Lorkin', '3 Golf Crossing', '418-451-4194'),
(7008, 'Joeann Snodin', '07 Goodland Avenue', '842-397-6597');

--"Insert into the PUBLISHER table 10 values of your choosing for the following columns: PublisherName, Address and Phone."--
insert into publisher 
values
('Henry Holt and Company', '5 Tennyson Point', '880-103-8207'),
('Scribner', '18 Hintze Pass', '155-731-1604'),
('Grand Central Publishing', '16793 Fieldstone Junction', '416-357-8427'),
('Blue Box Press', '2 Fairview Crossing', '232-745-6538'),
('Doubleday', '43183 Declaration Drive', '190-937-5536'),
('Artria Books', '6707 Prentice Terrace', '651-474-7714'),
('Ballantine Books', '91278 Eagan Parkway', '980-259-9835'),
('Washington Square Press', '7125 Erie Street', '101-728-4854'),
('Simon & Schuster', '26 Eggendart Court', '911-841-4300'),
('Knopf', '6069 Garrison Pass', '765-465-1345');

--Insert into the BOOKS table 20 rows of different books. Ensure to include values in the following columns: Title and PublisherName. Assign one of the book titles with the value “The Lost Tribe.”--
--I took book names for this list from GoodReads top 20 of 2023.--

select*from books

insert into books 
values
(1900,'It Starts with Us','Atria Books'),
(1901,'Daisy Jones and the Six','Ballantine Books'),
(1902,'The Seven Husbands of Evelyn Hugo','Washington Square Press'),
(1903,'The Lost Tribe','Henry Holt and Company'),
(1904,'I"m glad My Mom Died','Simon & Schuster'),
(1905,'It Ends with Us','Atria Books'),
(1906,'Tomorrow\, and Tomorrow\, and Tomorrow','Knopf'),
(1907,'Lessons in Chemistry','Doubleday'),
(1908,'Verity','Grand Central Publishing'),
(1909,'Spare','Random House'),
(1910,'A Court of Thorns and Roses','Doubleday'),
(1911,'Book Lovers','Berkley'),
(1912,'A Court of Mist and Fury','Doubleday'),
(1913,'Things We Never Got Over','Bloom Books'),
(1914,'The Housemaid','Grand Central Publishing'),
(1915,'The Silent Patient','Celadon Books'),
(1916,'Twisted Love','Bloom Books'),
(1917,'Holly','Scribner'),
(1918,'Let Us Descend','Scribner'),
(1919,'A Fire in the Flesh: A Flesh and Fire Novel','Blue Box Press');

select*from publisher
insert into publisher
values
('Celadon Books','41 Eastlawn Alley', '757-254-6235'),
('Bloom Books','68016 Straubel Hill', '408-841-1280'),
('Berkley','08 Dixon Alley', '677-317-2870'),
('Random House','08237 Knutson Terrace','362-630-8864')
;
--"Insert into the BOOK_AUTHORS table 10 different author names."--
insert into book_authors
values
(1900,'Colleen Hoover'),
(1901,'Taylor Jenkins Reid'),
(1902,'Taylor Jenkins Reid'),
(1903,'Edward Marriott'),
(1904,'Jeanette McCurdy'),
(1905,'Colleen Hoover'),
(1906,'Gabrielle Zevin'),
(1907,'Bonnie Gamus'),
(1908,'Colleen Hoover'),
(1909,'The Duke of Sussex Prince Harry');

--"Insert into the BOOK_COPIES table values for the following columns: Number_of_Copies, BookID, and BranchID. Ensure that if a branch has a book, it has at least two copies of it. (To clarify, the Number_of_Copies column should show two or more for each row)."--

insert into book_copies 
values
(1900,125,4),
(1901,124,5),
(1902,128,3),
(1903,126,6),
(1904,128,5),
(1905,123,4),
(1906,123,3),
(1907,127,5),
(1908,128,3),
(1909,124,4),
(1910,125,4),
(1911,123,6),
(1912,127,4),
(1913,123,6),
(1914,128,3),
(1915,127,2),
(1916,126,4),
(1917,124,3),
(1918,125,4),
(1919,123,3)
;



select*from branch
select*from borrower
select*from book_authors
select*from book_copies
select*from publisher
select*from books
select*from book_loans

--"Insert into the BOOK_LOANS table 10 rows including values in the following columns: BookID, BranchID, CardNo, DateOut, DateDue "--
insert into book_loans
values
(1906,123,7003,'2023-11-12','2023-12-12'),
(1900,125,7001,'2023-11-07','2023-12-07'),
(1904,128,7008,'2023-11-13','2023-12-13'),
(1903,126,7002,'2023-11-10','2023-12-10'),
(1904,124,7002,'2023-11-08','2023-12-08'),
(1909,125,7007,'2023-11-01','2023-12-01'),
(1919,128,7005,'2023-11-11','2023-12-11'),
(1918,127,7006,'2023-11-02','2023-12-02'),
(1917,124,7004,'2023-11-09','2023-12-09'),
(1916,125,7003,'2023-11-07','2023-12-07')
;

--"We're using a FULL OUTER JOIN on three tables: BOOK_LOANS, BORROWER, AND BOOKS. BOOK_LOANS has foreign keys for the primary keys of the BORROWER and BOOKS tables."
--By using the FULL OUTER JOIN on those three tables, you are able to see which BookID belongs in which branch, the card number of the borrower, the Publisher, the date the book was checked out and the date that it is due.


--Each table has a reference to another table of some sort. Some tables will have more data than another depending on how many library branches there are, how many books each branch has, how many people have obtained library cards, etc."--

select*from ((book_loans full outer join borrower on book_loans.cardNo=borrower.cardNo)full outer join books on book_loans.book_id=books.book_id)

--LIBRARY MANAGEMENT SYSTEM PROJECT PART THREE ASSIGNMENT--
--"Using the library database you created, create a query that returns all book titles and the authors name."--

--first i selected all values from each table to help me see the columns available for joining.--
select*from books
select*from book_authors
--here is the solution:--
select books.title, book_authors.author_name
from books
inner join book_authors
on books.book_id=book_authors.book_id

----"Create stored procedures that will query for each of the following questions:  
--How many copies of the book titled "The Lost Tribe" are owned by the library branch whose name is "Sharpstown"?--
select*from books where title='The Lost Tribe'
select*from book_copies
select*from branch
--Sharpstown is branch #125. It doesn't have any copies of the book 'The Lost Tribe.'FOR NEXT QUESTION IN ASSIGNMENT-- But the Linwood branch, #126, has 6 copies available. 
--in order to set up a stored procedure for these questions, we would have to pass variables to search name of book and branch name, then run outcome of this search.--
select*from books 
select*from book_copies 
select*from branch
--the below query will return a full listing of the library's books with branch name, title and how many copies each branch has of that title.
select 
books.title,
branch.branch_name,
book_copies.number_of_copies
from books
join book_copies 
on books.book_id=book_copies.book_id
join branch
on branch.branch_id=book_copies.branch_id
where title='';
--end --
--by adding a 'where' clause, a user can further search to see if a particular book is at a given branch. ***But, if the result is null that will not be helpful.

select 
books.title,
branch.branch_name,
book_copies.number_of_copies
from books
join book_copies 
on books.book_id=book_copies.book_id
join branch
on branch.branch_id=book_copies.branch_id
where title='';

--if adding this piece on the end of the above procedure:
where branch_name='Sharpstown' and title='The Lost Tribe';

--this will return an empty table because Sharpstown does NOT have any copies of the book. Therefore it would be preferable to use a title search and search the full database and see those results. 

--It took me many hours and several days of study and coding in this lesson area to reach this point. It would be ideal to further drill down this procedure and to set up a try/catch statement where if at first the result was null, there would be then a second part of the function (procedure) where a more fruitful result would come through. 
--However, the solution that I have set up with 'SearchForTitle' will ask for user to input a title, and then the procedure will give back a result showing which branches have copies of the book. 
--this one procedure will cover both questions, a) and b) of the assignment. 
--It is not ideal but in the given conditions (ie, my limitation with skill level at this time) this returns the most useful results that would be useable in a 'real life' scenario.
--SOLUTION/OUTCOME: for a) and b): The stored procedure will require entering the [procedure]'title to search' and then execute for a return!--

--c) "Retrieve the names of all borrowers who do not have any books checked out."

create proc FindInactiveBorrowers
as
select
Name,book_id
from borrower
full outer join book_loans
on borrower.cardNo=book_loans.cardNo
where book_id is null;

--the above procedure uses a full outer join of the book loans and borrower tables. It compares the 2 tables and then can isolate 'null' values alongside names of cardholders who do not have anything checked out. 