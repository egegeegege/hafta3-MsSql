-- De�i�kenler
-- de�i�ken tan�mlama
-- declare @DegiskenAdi tip
declare @sayi int
declare @tarih datetime
declare @adres text
declare @yetki char
declare @metin varchar(max)

set @metin = 'Yaz�l�m'

print replace(@metin,'Yaz�l�m','SQL')