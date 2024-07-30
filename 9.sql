-- Koþul (Condition) yapýlarý
-- if else bloklarý bir takým olarak çalýþýr ve sadece bu bloklardan birisi çalýþýr.
-- bir blokta if - else bir defa yazýlrýken else if birden çok defa opsiyonel olarak yazýlýr


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
		print ('Sayý sýfýrdan büyüktür')
	end
else if(@sayi<0)
	begin
		print ('Sayý sýfýrdan küçüktür')
	end
else 
	begin
		print ('Sayý sýfýrdýr.')
	end


if(year(getdate()) = 2024)
begin
	print ('2024 yýlýndasýnýz')
end
else if(year(getdate()) = 2023)
begin
	print ('2023 yýlýndasýnýz')
end
else
begin
	print ('2024 yada 2023 yýlýnda deðilsiniz')
end



-- bir öðrenciye ait not bir fonksiyonda parametre alarak alýnacak deðer;
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
			set @harfliNot = 'Notunuz 0-100 arasýnda olmalýdýr.'
		end
	return @harfliNot
end

print dbo.fnc_HarfliNot(120)

-- ÖDEV
--1
-- Çalýþanlar tablosundaki çalýþanlarýn yaþlarý 70 ten büyük olanlarý Emeklilik yaþýnýz geldi 70 ten küçük olanlarý
-- ise Emekli olamadýnýz uyarýsýný fonksiyon ve if kavramlarýný kullanarak yazdýrýnýz.
--2
-- Category Id si 1 olan ürünlerin ortalama fiyatý 100 den büyük ise Ortalama yüksek Deðil ise Ortalama düþük yazan
-- sorguyu yazýnýz. Fonksiyon, if , aggregate

