use UTSgenapnumber4

create table motor
(
Merk char(10) not null PRIMARY KEY,
Tipe varchar(50) not null,
CreatedDate date not null,
Descriptions varchar(50) not null,
);

--INSERT--
INSERT INTO motor 
 (Merk, Tipe, CreatedDate, Descriptions)
VALUES
 ('Honda','CBR1000RR','2001-05-03','keren'),
 ('Kawasaki','H2','2002-05-04','keren'),
 ('Yamaha','R15','2003-06-05','jelek'),
 ('Harley','gatau','2004-06-05','baja'),
 ('Suzuki','GSX150s','2005-07-20','sombong ');

select "Merk", "Tipe" from dbo.motor
where  "CreatedDate" > '2003-01-01';

SELECT Merk, COUNT(10) AS motor
FROM motor
WHERE CreatedDate > '2002-01-01'
GROUP BY Merk
HAVING COUNT(*) > 1;

SELECT Merk
FROM motor
GROUP BY Merk ;


SELECT Tipe
FROM motor
INNER JOIN  Descriptions  ON Merk =  CreatedDate;

drop table motor