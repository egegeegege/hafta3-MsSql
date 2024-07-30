-- Functions (Fonksiyonlar)
-- Fonksiyonlar i�lerinde kod bloklar�n� bar�nd�ran ve istenildi�inde �a��r�larak �al��t�r�la
-- mod�ler yap�lard�r.
-- Fonksiyonlar kendi i�inde de�er d�nd�ren veya i�lem yapan yap�lard�r.
-- Fonksiyonlar sadece varchar,int gibi de�erler d�nd�rmez sql de tabloda d�nd�r�r.

-- Fonksiyonlar 2'ye ayr�l�r
-- De�er d�nd�ren fonksiyonlar (parametreli,parametresiz)
-- De�er d�nd�rmeyen fonksiyonlar (parametreli,parametresiz)

-- fonksiyon tan�mlama
use Northwind
create function fnc_FonksiyonAdi()
returns int -- geriye d�nd�rd��� de�er
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

--- �al��anlar�n ya�lar�n� hesaplayan fonksiyonu yaz�n�z.
create function fnc_YasHesapla(@tarih int,@dogumYili int)
returns int
as
begin
	return @tarih - @dogumYili
end

print dbo.fnc_YasHesapla(2024,1992)
-- fonksiyonlar tablo i�erisinde �a��r�labilir
select dbo.fnc_YasHesapla(year(getdate()),year(BirthDate)) from Employees

-- employeeid si 5 olan �al��an�n ald��� sipari�lerdeki customerid leri getirin.
create function fnc_GetCustomerID(@employeeID int)
returns varchar(max)
as
begin
		declare @customer varchar(max)
		select @customer = CustomerID from Orders where EmployeeID = @employeeID
		return @customer
end

select dbo.fnc_GetCustomerID(1) -- ilk buldu�unu d�nd�r�r.

-- geriye tablo d�nd�ren fonksiyon
create function fnc_GetProducts(@categoryid int)
returns table
as 
return select * from Products where CategoryID in (@categoryid)

select * from fnc_GetProducts(3)






