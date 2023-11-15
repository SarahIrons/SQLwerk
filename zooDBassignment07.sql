
/*this is  a Dossier of Tastes and Interests (DOTI) to be used for friends/family; as a way to track what people like for cases of gift-giving, party hosting etc */

create table tbl_person (
	personID int not null primary key,
	firstname varchar(50),
	lastname varchar(50),
	birthday varchar (12)
);

insert into tbl_person
	(personID,firstname,lastname,birthday)
	values
	(1,'Patrick','Roach','12-26-1982'),
	(2,'Cheryl','Meyers','02-14-1951'),
	(3,'Jenny','Sloas','03-28-1980'),
	(4,'Tara','Sweeney','11-25-1981'),
	(5,'Carlos','Teel','01-01-1900')

create table tbl_tasteprefs(
	tastepref_id int primary key not null,
	coffee varchar(50),
	beer varchar (50),
	wine varchar (50),
	Nonalcholic_bevs varchar (50),
	candy varchar (50)
	foreign key(tastepref_id)
	references tbl_person(personID)
);


	insert into tbl_tasteprefs(tastepref_id, coffee,beer,wine,Nonalcholic_bevs,candy)
	values
	(1,'oatmilk creamer;flavored cofees','no alc','no alc','zero calorie--cream soda,seltzer waters','PB cups or dark chocolate'),
	(2,'dairy creamer','Corona','Merlot or Cabernet','Diet Coke','dark chocolate'),
	(3,'cream and sugar','cider ale','Moscato','Diet Coke','dark chocolate'),
	(4,'black','NA beer','no wine','Coke or Dr. Pepper','gummy candies'),
	(5,'black','IPA','red wines','Pepsi or Sprite','Twix')
	;

/*the following function is to identify all people that like Diet Coke and display their name. */

select firstname,Nonalcholic_bevs
from tbl_tasteprefs
inner join tbl_person
on tbl_tasteprefs.tastepref_id=tbl_person.personID
where Nonalcholic_bevs='Diet Coke'




	