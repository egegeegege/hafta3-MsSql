-- Ko�ul (Condition) yap�lar�
-- if else bloklar� bir tak�m olarak �al���r ve sadece bu bloklardan birisi �al���r.
-- bir blokta if - else bir defa yaz�lr�ken else if birden �ok defa opsiyonel olarak yaz�l�r


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
		print ('Say� s�f�rdan b�y�kt�r')
	end
else if(@sayi<0)
	begin
		print ('Say� s�f�rdan k���kt�r')
	end
else 
	begin
		print ('Say� s�f�rd�r.')
	end


if(year(getdate()) = 2024)
begin
	print ('2024 y�l�ndas�n�z')
end
else if(year(getdate()) = 2023)
begin
	print ('2023 y�l�ndas�n�z')
end
else
begin
	print ('2024 yada 2023 y�l�nda de�ilsiniz')
end



-- bir ��renciye ait not bir fonksiyonda parametre alarak al�nacak de�er;
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
			set @harfliNot = 'Notunuz 0-100 aras�nda olmal�d�r.'
		end
	return @harfliNot
end

print dbo.fnc_HarfliNot(120)

-- �DEV
--1
-- �al��anlar tablosundaki �al��anlar�n ya�lar� 70 ten b�y�k olanlar� Emeklilik ya��n�z geldi 70 ten k���k olanlar�
-- ise Emekli olamad�n�z uyar�s�n� fonksiyon ve if kavramlar�n� kullanarak yazd�r�n�z.
--2
-- Category Id si 1 olan �r�nlerin ortalama fiyat� 100 den b�y�k ise Ortalama y�ksek De�il ise Ortalama d���k yazan
-- sorguyu yaz�n�z. Fonksiyon, if , aggregate

