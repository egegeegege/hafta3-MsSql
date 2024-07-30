-- DML (Data Manipulation Language) (select,insert,update,delete)

-- insert (kay�t ekleme)
-- sql de tabloya bir sat�r olarak kay�t eklemeye yarar.
/* 
	yap� => insert into tabloAdi (Sutun1,Sutun2) values ('Deger1','Deger2')

	verilen s�tunlar verilen de�erlerle bire bir ayn� s�rada olmal�d�r.


*/

select * from Employees
insert into Employees (FirstName,LastName) values ('Tahsin','Canpolat')
insert into Employees (FirstName,LastName) values ('Ali','�elik')
insert into Employees (FirstName,LastName) values ('Ahmet','Ku�')
insert into Employees (FirstName,LastName) values ('Ay�e','Kumanda')

insert into Employees (FirstName,LastName,Title,TitleOfCourtesy) values ('Ay�e','Kumanda','�al��an','Ms.')


-- �oklu insert i�lemi
insert into Employees
(FirstName,LastName)
values
('A','B'),
('C','D'),
('E','F')

create table deneme(
Ad varchar(max),
Soyad varchar(max) NOT NULL
)

truncate table deneme

select * from deneme
-- bulk insert bir dosyadaki verileri tabloya eklemek i�in kullan�l�r.
bulk insert deneme
from 'C:\insertData.txt'
with(
fieldterminator = '\t', -- txt dosyas�nda kolonlar 'TAB' ile ayr�lm��t�r.
rowterminator = '\n' -- txt dosyas�nda kolonlar 'TAB' ile ayr�lm��t�r.
)

-- update (g�ncelleme)
-- sqlde kay�l� olan verileri g�ncellemek i�in kullan�l�r.
-- yap� => update tabloAdi set SutunAdi=guncelData where kosul
-- update hem delete hem insert i�lemi yapar.
-- update i�lemi her zaman unique bir alana g�re yap�lmal�. 
-- Fakat e�er t�m tabloda bir alan� de�i�tirmek istiyorsak bu durum de�i�kenlik g�sterebilir.
select * from Employees
update Employees set FirstName='Ali' where EmployeeID = 12
update Employees set FirstName='Selen',LastName='Demir' where EmployeeID = 13
update Employees set FirstName='Se�il',LastName='C',[Address] ='Ankara' where EmployeeID = 13


-- delete (silme)
-- sqlde kay�t silmek i�in kullan�l�r.
-- yap� => delete from tabloAdi where kosul
delete from Employees where EmployeeID=13 -- e�er id ba�ka bir tabloda ili�ki amac�yla foreign key olarak tutuluyorsa bu kay�t silinemez.

select * from deneme

delete from deneme -- UYARI !!! E�er ko�ul vermezsek delete sorgusu truncate gibi �al���r.
