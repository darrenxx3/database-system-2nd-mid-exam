use [UTS_00000054804_Christopher Darren]
--1--
--MAKING TABLE--
create table Mentor
(
MentorID char(5) not null primary key,
MentorName varchar(50) not null,
Semester int not null,
Major varchar(50) not null,
EmailAddress varchar(50) not null,
Phone varchar (50) not null,
GPA dec (3,2) not null,
MentorShift varchar (50) not null,
);

create table Mentee
(
MenteeID char(5) not null primary key,
MenteeName varchar(50) not null,
Semester int not null,
Major varchar(50) not null,
EmailAddress varchar(50) not null,
Phone varchar(50) not null,
GPA dec (3,2) not null,
);

create table Subjects
(
SubjectID char(5) not null primary key,
SubjectName varchar(50) not null,
Credit int not null,
);


create table HeaderMentoring
(
MentoringID char(5) not null primary key,
MentorID char (5)not null ,
FOREIGN KEY (MentorID) REFERENCES Mentor(MentorID),
SubjectID CHAR(5) not null,
	FOREIGN KEY (SubjectID) REFERENCES Subjects,
Room int not null,
StartDate date not null,
Dayss int not null,
Shifts int not null,
);

create table DetailMentoring
(
	MenteeID char(5),
	FOREIGN KEY (MenteeID) REFERENCES Mentee,
	MentoringID char(5),	
	FOREIGN KEY (MentoringID) REFERENCES HeaderMentoring,
	PRIMARY KEY (MenteeID, MentoringID),
	DiscussionGroup int,

);

--INSERT FUNCTION--
INSERT into Mentor
	(MentorID, MentorName, Semester, Major, EmailAddress, Phone, GPA, MentorShift)
    VALUES
    ('MR002', 'Sean Young Tjahyadi', 5, 'Information System', 'YT@bj.com', '081805846212', 4.00, 'Morning'),
    ('MR003', 'Parlinggoman Rinaldo Hasibuan', 5, 'Information Technology', 'PG@bj.com', '081572123422 ', 4.00, 'Afternoon'),
    ('MR004', 'William Surya Permana', 3, 'Information System', 'WL@bj.com', '081805422344', 4.00, 'Afternoon'),
    ('MR005', 'Henry Setiady', 7, 'Information Technology and Mathematics', 'HT@bj.com', '081805675366 ', 4.00, 'Afternoon'),
    ('MR006', 'Budi', 3, 'Information Technology', 'BD@bj.com', '081228123129', 4.00, 'Afternoon'),
    ('MR007', 'Yovita Turnadi', 3, 'Information System', 'YV@bj.com', '081809112345', 4.00, 'Afternoon'),
    ('MR008', 'Rita', 3, 'Information Technology', 'RT@bj.com', '081805821212', 4.00, 'Evening'),
    ('MR009', 'Amelia Christin', 5, 'Information System', 'AS@bj.com', '081542312348', 4.00, 'Evening'),
    ('MR010', 'Eripin', 5, 'Information Technology', 'EN@bj.com', '081579357698', 4.00, 'Evening');

INSERT into Mentee
	(MenteeID, MenteeName, Semester, Major, EmailAddress, Phone, GPA)
    VALUES
    ('ME001', 'Yuhdy Budiarto', 3, 'Information Technology', 'YB@bj.com', '081805846212', 4.00),
    ('ME002', 'Setiawan', 5, 'Information Technology', 'SW@bj.com', '085275178762', 3.00),
    ('ME003', 'Ferenkey', 5, 'Information Technology', 'FK@bj.com', '081805422346', 3.00),
    ('ME004', 'Rapenda Medianta Surbakti', 3, 'Information System', 'RM@bj.com', '081572123423', 3.25),
    ('ME005', 'Steven Junior', 3, 'Information Technology and Mathematics', 'ST@bj.com', '081805675367', 3.75),
    ('ME006', 'Yoki Winata', 3, 'Information Technology', 'YK@bj.com', '081228123131', 3.50),
    ('ME007', 'Irsyad', 5, 'Information Technology', 'IR@bj.com', '081809112346', 3.00),
    ('ME008', 'Stevano Christian', 5, 'Information Technology', 'SV@bj.com', '081805821213', 3.75),
    ('ME009', 'Jeffry Widyananta', 5, 'Information System and management', 'JF@bj.com', '081542366349', 3.66),
	('ME010', 'Mahenda Metta Surya', 3, 'Information System', 'MH@bj.com', '081579357699', 3.25),
	('ME011', 'Raymond', 5, 'Computer Engineering', 'RY@bj.com', '081679134568', 3.00),
	('ME012', 'Antoni Wiguna', 3, 'Information Techonology', 'AL@bj.com', '081795614698', 3.00),
	('ME013', 'Samuel Sonny Salim', 5, 'Information Techonology', 'SO@bj.com', '081476532964', 3.00),
	('ME014', 'Johan', 5, 'Information Techonology', 'Johan@yahoo.com', '081648963125', 3.00),
	('ME015', 'Winata', 5, 'Information Techonology and Mathematics', 'Winata@yahoo.com', '081806497625', 3.25),
	('ME016', 'Nana', 5, 'Information Techonology and Mathematics', 'Nana@yahoo.com', '081649966624', 3.00),
	('ME017', 'Yunus', 5, 'Information Techonology and Mathematics', 'Yunus@yahoo.com', '081816497623', 3.25),
	('ME018', 'Dicky', 5, 'Information System', 'Dicky@yahoo.com', '081648953124', 3.00),
	('ME019', 'Surya', 5, 'Information System', 'Surya@yahoo.com', '081806397623', 3.25),
	('ME020', 'Mandagi', 5, 'Information System', 'Mandagi@yahoo.com', '081658963124', 3.00),
	('ME021', 'Yuhdy Budiarto', 3, 'Information Technology', 'YB@bj.com', '085275178762', 3.00),
	('ME022', 'Setiawan', 5, 'Information Technology', 'SW@bj.com', '081805846213', 3.00),
	('ME023', 'Ferenkey', 5, 'Information Technology', 'FK@bj.com', '081572123423', 3.00),
	('ME024', 'Rapenda Medianta Surbakti', 3, 'Information System', 'RM@bj.com', '081805422346', 3.25),
	('ME025', 'Steven Junior', 3, 'Information Techonology and Mathematics', 'ST@bj.com', '081805675367', 3.75),
	('ME026', 'Yoki Winata', 3, 'Information Techonology', 'YK@bj.com', '081228123131', 3.50),
	('ME027', 'Irsyad', 5, 'Information Techonology', 'IR@bj.com', '081809112346', 3.00),
	('ME028', 'Stevano Christian', 5, 'Information Techonology', 'SV@bj.com', '081805821213', 3.75),
	('ME029', 'Jeffry Widyananta', 5, 'Information System and Management', 'JF@bj.com', '081542312349', 2.25),
	('ME030', 'Mahenda Metta Surya', 3, 'Information System', 'MH@bj.com', '081579357699', 3.25);


INSERT into Subjects
	(SubjectID, SubjectName, Credit)
    VALUES
	('BN001','Computer Graphics', 7),
	('BN002','Automata Theory,Language and Computation', 2),
	('BN003','Computer Algorithm', 6),
	('BN004','Object Oriented Programming', 4),
	('BN005','Database', 4),
	('BN006','Assembly Language', 4),
	('BN007','Discrete Mathematics', 4),
	('BN008','Artificial Intelligence', 4),
	('BN009','Linear Algebra', 6),
	('BN010','Calculus', 7);

INSERT into HeaderMentoring
 (MentoringID, MentorID, SubjectID, Room, StartDate, Dayss, Shifts)
	VALUES
	('M001','MR001','BN010', 515, '2010-10-12' ,2,3),
	('M002','MR002','BN008', 516, '2010-10-12' ,2,3),
	('M003','MR003','BN003', 517, '2010-10-13' ,3,3),
	('M004','MR004','BN007', 518, '2010-10-13' ,4,3),
	('M005','MR005','BN006', 519, '2010-10-14' ,4,4),
	('M006','MR006','BN009', 519, '2010-10-16' ,4,4),
	('M007','MR007','BN005', 517, '2010-10-17' ,5,2),
	('M008','MR008','BN004', 518, '2010-10-18' ,5,5),
	('M009','MR009','BN001', 519, '2010-10-19' ,6,6),
	('M010','MR010','BN002', 520, '2010-10-22' ,6,5);

INSERT into DetailMentoring
    (MenteeID, MentoringID, DiscussionGroup)
    VALUES
    ('ME001', 'M001', 1),
    ('ME002', 'M007', 1),
    ('ME003', 'M010', 5),
    ('ME004', 'M001', 4),
    ('ME005', 'M008', 4),
    ('ME006', 'M004', 3),
    ('ME007', 'M003', 3),
    ('ME008', 'M008', 4),
    ('ME009', 'M010', 1),
    ('ME010', 'M001', 4),
    ('ME011', 'M001', 5),
    ('ME012', 'M002', 3),
    ('ME013', 'M003', 3),
    ('ME014', 'M004', 4),
    ('ME015', 'M005', 1),
    ('ME016', 'M006', 1),
    ('ME017', 'M007', 3),
    ('ME018', 'M008', 5),
    ('ME019', 'M010', 1),
    ('ME020', 'M001', 2);

drop table DetailMentoring

--2--
SELECT * from Mentee
UPDATE Mentee
SET MenteeName = 'Margareta Meta Surya'
WHERE MenteeID = 'ME010';

--3-- 
SELECT * from Mentor
UPDATE Mentor
Set Semester = Semester -1
From HeaderMentoring X
join Subjects Y ON X.SubjectID = X.SubjectID
join Mentor SE ON X.MentorID = X.MentorID
Where Credit > 7;

Select MentorName, Credit from HeaderMentoring X
join Subjects Y ON X.SubjectID = X.SubjectID
join Mentor SE ON X.MentorID = X.MentorID
where Credit > 6;

--4--
SELECT * from Mentee
UPDATE Mentee
Set GPA = 3.75
From Mentor A

--5--
SELECT * from Mentor
UPDATE Mentor
Set Semester = Semester-
WHERE RIGHT(MentorID, 3) >= '005'

--6--
SELECT * from Mentee
UPDATE Mentee
SET MenteeName = 'MID'
WHERE MenteeID = 'ME010';

--7--
SELECT * from Mentee
DELETE FROM Mentee WHERE Major ='Information Technology and Mathematics';

--8--
create view view1 as select MentorID, MentorName, 
MenteeID, MenteeName, DiscussionGroup from Mentor
WHERE MentorID > 10

select * from view1
