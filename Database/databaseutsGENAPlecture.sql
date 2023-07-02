use UTSgenap
create view view1 as select * from MsDoctor;

select * from view1;

--grant--
create login user3 with password = 'user3';
create user [user3] for login user3;

--use grant--
use [UTSgenap]
go
GRANT SELECT
ON MsMedicine
TO user3

--grant option--
Grant all privileges
ON MsDoctor
TO user3 WITH GRANT OPTION;

--where and --having--
