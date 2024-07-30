--- String Fonksiyonlar
-- substring
-- istenilen s�tunda istenilen karakterden itibaren istenilen uzunlukta de�er almay� sa�lar
-- 3 parametre al�r (s�tun,ba�lang�� noktas�, uzunluk)
select FirstName,substring(FirstName,1,4) from Employees
print substring('Tahsin Canpolat',1,6)
select substring(Freight,1,2) from Orders -- hata verir. substring say�sal ifadelerle kullan�lamaz.
select substring(BirthDate,1,4) from Employees -- hata verir. substring datetime ifadelerle kullan�lamaz.
select substring(Notes,1,10) from Employees

select substring(Region,1,1) from Employees -- nullar� es ge�er.

-- left-right
-- left => en soldan istenilen uzunluk kadar de�eri al�r.
select FirstName, left(FirstName,3) from Employees
-- right => en sa�dan istenilen uzunluk kadar de�eri al�r.
select FirstName, right(FirstName,3) from Employees
select left(BirthDate,3),BirthDate from Employees -- datetime ile �al���rlar.

-- upper-lower
-- upper => karakterleri b�y�k harfe �evirir.
select FirstName, upper(LastName) from Employees
-- lower => karakterleri k���k harfe �evirir.
select FirstName, lower(LastName) from Employees

-- len => length (uzunluk)

select len(CompanyName) as 'Uzunluk',CompanyName from Customers

-- customers tablosunda CompanyName alan�n� ilk harfi b�y�k geri kalan� k���k �ekilde 
-- yazd�r�n.

select upper(left(CompanyName,1)) + LOWER(SUBSTRING(CompanyName,2,LEN(CompanyName)-1))
from Customers

-- charindex

print charindex('@','tahsincanpolat@gmail.com') -- @ ifadesinin indexini al�r.
print charindex('a','tahsincanpolat@gmail.com',6) -- son parametre ka��n�c indexten itibaren bak�l�p karakterin bulunaca��n� ifade eder.

-- Bo�luklar� silme (trim)

print trim('     tahsin canpolat         ') -- sa�dan soldan t�m bo�luklar� siler.
print ltrim('     tahsin canpolat         ') -- sadece soldaki bo�luklar� siler.
print rtrim('     tahsin canpolat         ') -- sadece sa�daki bo�luklar� siler.

-- reverse (tersine �evirme)
print reverse('sql')
select REVERSE(FirstName) from Employees

-- replace (de�i�tirme)
print replace ('matematik dersi','matematik','yaz�l�m')

select REPLACE(Title,'Sales','Sat��') from Employees

-- replicate (�o�altmak)

print replicate(char(9) + 'sql dersleri' + char(13),100)

-- ascii - char
print ascii('a')
print char(97)