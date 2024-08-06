-- Koşul (Condition) yapıları
-- if else blokları bir takım olarak çalışır ve sadece bu bloklardan birisi çalışır.
-- bir blokta if - else bir defa yazılrıken else if birden çok defa opsiyonel olarak yazılır


/* 
	if(kosul)
		begin

		end
	else if (kosul)
		begin

		end
	else
		begin

		end
*/
declare @sayi int
set @sayi = 10
if(@sayi>0)
	begin
		print ('Sayı sıfırdan büyüktür')
	end
else if(@sayi<0)
	begin
		print ('Sayı sıfırdan küçüktür')
	end
else 
	begin
		print ('Sayı sıfırdır.')
	end


if(year(getdate()) = 2024)
begin
	print ('2024 yılındasınız')
end
else if(year(getdate()) = 2023)
begin
	print ('2023 yılındasınız')
end
else
begin
	print ('2024 yada 2023 yılında değilsiniz')
end



-- bir öğrenciye ait not bir fonksiyonda parametre alarak alınacak değer;
-- not: 0-20 => FF
-- not: 21-40 => DD
-- not: 41-70 => CC
-- not: 71-85 => BB
-- not: 85-100 => AA
create function fnc_HarfliNot(@not int)
returns varchar(max)
begin
	declare @harfliNot varchar(max)
	if(@not>=0 and @not<=20)
		begin
			set @harfliNot = 'FF'
		end
	else if(@not>=21 and @not<=40)
		begin
			set @harfliNot = 'DD'
		end
	else if(@not>=41 and @not<=70)
		begin
			set @harfliNot = 'CC'
		end
	else if(@not>=71 and @not<=85)
		begin
			set @harfliNot = 'BB'
		end
	else if(@not>=86 and @not<=100)
		begin
			set @harfliNot = 'AA'
		end
	else
		begin
			set @harfliNot = 'Notunuz 0-100 arasında olmalıdır.'
		end
	return @harfliNot
end

print dbo.fnc_HarfliNot(120)

-- ÖDEV
--1
-- Çalışanlar tablosundaki çalışanların yaşları 70 ten büyük olanları Emeklilik yaşınız geldi 70 ten küçük olanları
-- ise Emekli olamadınız uyarısını fonksiyon ve if kavramlarını kullanarak yazdırınız.

create function fnc_EmployeeEmekli(@id int)
returns varchar(max)
as
begin
	declare @yas int
	select @yas = year(getdate()) - year(BirthDate) from Employees where EmployeeID = @id
	if(@yas>=70)
		begin
			return 'Emekli oldunuz.'
		end
	else
		begin
			return 'Emekli olamadınız'
		end
	return ''
end

select dbo.fnc_EmployeeEmekli(8)

select year(getDate()) - year(BirthDate) , EmployeeID, FirstName from Employees

--2
-- Category Id si 1 olan ürünlerin ortalama fiyatı 100 den büyük ise Ortalama yüksek Değil ise Ortalama düşük yazan
-- sorguyu yazınız. Fonksiyon, if , aggregate

create function fnc_OrtalamaBilgisi(@id int)
returns varchar(max)
as
begin
	declare @ortalama int
	select @ortalama  = avg(UnitPrice) from Products where CategoryID = @id
	if(@ortalama>=100)
		begin
			return 'Ortalama yüksek'
		end
	else
		begin
			return 'Ortalama düşük'
		end
	return ''
end


print dbo.fnc_OrtalamaBilgisi(110)


