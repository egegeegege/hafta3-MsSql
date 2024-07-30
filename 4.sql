-- Tarih Zaman fonksiyonlarý
-- Þimdiki tarih
print getdate()
print format(getdate(),'D')
print format(getdate(),'d')
print format(getdate(),'D','TR-tr')
print format(getdate(),'D','Es-es')
print format(getdate(),'D','De-de')

-- Yýl Alma
select year(OrderDate) from Orders
select datepart(year,OrderDate) from Orders
-- Ay Alma
select month(OrderDate) from Orders
select datepart(month,OrderDate) from Orders
-- Gün Alma
select day(OrderDate) from Orders
select datepart(day,OrderDate) from Orders

-- Hafta alma
select datepart(week,OrderDate) from Orders

-- Yýlýn kaçýncý günü
select datepart(dayofyear,OrderDate) from Orders

-- Çalýþanlarýn yaþlarýný yazdýrýnýz
select FirstName, year(getdate()) - year(BirthDate) as 'Yaþlar' from Employees




