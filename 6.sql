-- DML (Data Manipulation Language) (select,insert,update,delete)

-- insert (kayýt ekleme)
-- sql de tabloya bir satýr olarak kayýt eklemeye yarar.
/* 
	yapý => insert into tabloAdi (Sutun1,Sutun2) values ('Deger1','Deger2')

	verilen sütunlar verilen deðerlerle bire bir ayný sýrada olmalýdýr.


*/

select * from Employees
insert into Employees (FirstName,LastName) values ('Tahsin','Canpolat')
insert into Employees (FirstName,LastName) values ('Ali','Çelik')
insert into Employees (FirstName,LastName) values ('Ahmet','Kuþ')
insert into Employees (FirstName,LastName) values ('Ayþe','Kumanda')

insert into Employees (FirstName,LastName,Title,TitleOfCourtesy) values ('Ayþe','Kumanda','Çalýþan','Ms.')


-- çoklu insert iþlemi
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
-- bulk insert bir dosyadaki verileri tabloya eklemek için kullanýlýr.
bulk insert deneme
from 'C:\insertData.txt'
with(
fieldterminator = '\t', -- txt dosyasýnda kolonlar 'TAB' ile ayrýlmýþtýr.
rowterminator = '\n' -- txt dosyasýnda kolonlar 'TAB' ile ayrýlmýþtýr.
)

-- update (güncelleme)
-- sqlde kayýlý olan verileri güncellemek için kullanýlýr.
-- yapý => update tabloAdi set SutunAdi=guncelData where kosul
-- update hem delete hem insert iþlemi yapar.
-- update iþlemi her zaman unique bir alana göre yapýlmalý. 
-- Fakat eðer tüm tabloda bir alaný deðiþtirmek istiyorsak bu durum deðiþkenlik gösterebilir.
select * from Employees
update Employees set FirstName='Ali' where EmployeeID = 12
update Employees set FirstName='Selen',LastName='Demir' where EmployeeID = 13
update Employees set FirstName='Seçil',LastName='C',[Address] ='Ankara' where EmployeeID = 13


-- delete (silme)
-- sqlde kayýt silmek için kullanýlýr.
-- yapý => delete from tabloAdi where kosul
delete from Employees where EmployeeID=13 -- eðer id baþka bir tabloda iliþki amacýyla foreign key olarak tutuluyorsa bu kayýt silinemez.

select * from deneme

delete from deneme -- UYARI !!! Eðer koþul vermezsek delete sorgusu truncate gibi çalýþýr.
