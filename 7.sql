-- Functions (Fonksiyonlar)
-- Fonksiyonlar içlerinde kod bloklarýný barýndýran ve istenildiðinde çaðýrýlarak çalýþtýrýla
-- modüler yapýlardýr.
-- Fonksiyonlar kendi içinde deðer döndüren veya iþlem yapan yapýlardýr.
-- Fonksiyonlar sadece varchar,int gibi deðerler döndürmez sql de tabloda döndürür.

-- Fonksiyonlar 2'ye ayrýlýr
-- Deðer döndüren fonksiyonlar (parametreli,parametresiz)
-- Deðer döndürmeyen fonksiyonlar (parametreli,parametresiz)

-- fonksiyon tanýmlama
use Northwind
create function fnc_FonksiyonAdi()
returns int -- geriye döndürdüðü deðer
as
begin
	return 10*2
end

print dbo.fnc_FonksiyonAdi()

create function fnc_topla(@sayi1 int,@sayi2 int)
returns int
as
begin
	return @sayi1 + @sayi2
end

select dbo.fnc_topla(20,10)

--- çalýþanlarýn yaþlarýný hesaplayan fonksiyonu yazýnýz.
create function fnc_YasHesapla(@tarih int,@dogumYili int)
returns int
as
begin
	return @tarih - @dogumYili
end

print dbo.fnc_YasHesapla(2024,1992)
-- fonksiyonlar tablo içerisinde çaðýrýlabilir
select dbo.fnc_YasHesapla(year(getdate()),year(BirthDate)) from Employees

-- employeeid si 5 olan çalýþanýn aldýðý sipariþlerdeki customerid leri getirin.
create function fnc_GetCustomerID(@employeeID int)
returns varchar(max)
as
begin
		declare @customer varchar(max)
		select @customer = CustomerID from Orders where EmployeeID = @employeeID
		return @customer
end

select dbo.fnc_GetCustomerID(1) -- ilk bulduðunu döndürür.

-- geriye tablo döndüren fonksiyon
create function fnc_GetProducts(@categoryid int)
returns table
as 
return select * from Products where CategoryID in (@categoryid)

select * from fnc_GetProducts(3)






