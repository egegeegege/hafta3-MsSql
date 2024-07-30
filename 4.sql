-- Tarih Zaman fonksiyonlar�
-- �imdiki tarih
print getdate()
print format(getdate(),'D')
print format(getdate(),'d')
print format(getdate(),'D','TR-tr')
print format(getdate(),'D','Es-es')
print format(getdate(),'D','De-de')

-- Y�l Alma
select year(OrderDate) from Orders
select datepart(year,OrderDate) from Orders
-- Ay Alma
select month(OrderDate) from Orders
select datepart(month,OrderDate) from Orders
-- G�n Alma
select day(OrderDate) from Orders
select datepart(day,OrderDate) from Orders

-- Hafta alma
select datepart(week,OrderDate) from Orders

-- Y�l�n ka��nc� g�n�
select datepart(dayofyear,OrderDate) from Orders

-- �al��anlar�n ya�lar�n� yazd�r�n�z
select FirstName, year(getdate()) - year(BirthDate) as 'Ya�lar' from Employees




