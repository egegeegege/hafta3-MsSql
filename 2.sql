--- String Fonksiyonlar
-- substring
-- istenilen sütunda istenilen karakterden itibaren istenilen uzunlukta deðer almayý saðlar
-- 3 parametre alýr (sütun,baþlangýç noktasý, uzunluk)
select FirstName,substring(FirstName,1,4) from Employees
print substring('Tahsin Canpolat',1,6)
select substring(Freight,1,2) from Orders -- hata verir. substring sayýsal ifadelerle kullanýlamaz.
select substring(BirthDate,1,4) from Employees -- hata verir. substring datetime ifadelerle kullanýlamaz.
select substring(Notes,1,10) from Employees

select substring(Region,1,1) from Employees -- nullarý es geçer.

-- left-right
-- left => en soldan istenilen uzunluk kadar deðeri alýr.
select FirstName, left(FirstName,3) from Employees
-- right => en saðdan istenilen uzunluk kadar deðeri alýr.
select FirstName, right(FirstName,3) from Employees
select left(BirthDate,3),BirthDate from Employees -- datetime ile çalýþýrlar.

-- upper-lower
-- upper => karakterleri büyük harfe çevirir.
select FirstName, upper(LastName) from Employees
-- lower => karakterleri küçük harfe çevirir.
select FirstName, lower(LastName) from Employees

-- len => length (uzunluk)

select len(CompanyName) as 'Uzunluk',CompanyName from Customers

-- customers tablosunda CompanyName alanýný ilk harfi büyük geri kalaný küçük þekilde 
-- yazdýrýn.

select upper(left(CompanyName,1)) + LOWER(SUBSTRING(CompanyName,2,LEN(CompanyName)-1))
from Customers

-- charindex

print charindex('@','tahsincanpolat@gmail.com') -- @ ifadesinin indexini alýr.
print charindex('a','tahsincanpolat@gmail.com',6) -- son parametre kaçýnýc indexten itibaren bakýlýp karakterin bulunacaðýný ifade eder.

-- Boþluklarý silme (trim)

print trim('     tahsin canpolat         ') -- saðdan soldan tüm boþluklarý siler.
print ltrim('     tahsin canpolat         ') -- sadece soldaki boþluklarý siler.
print rtrim('     tahsin canpolat         ') -- sadece saðdaki boþluklarý siler.

-- reverse (tersine çevirme)
print reverse('sql')
select REVERSE(FirstName) from Employees

-- replace (deðiþtirme)
print replace ('matematik dersi','matematik','yazýlým')

select REPLACE(Title,'Sales','Satýþ') from Employees

-- replicate (çoðaltmak)

print replicate(char(9) + 'sql dersleri' + char(13),100)

-- ascii - char
print ascii('a')
print char(97)