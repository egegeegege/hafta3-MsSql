-- Deðiþkenler
-- deðiþken tanýmlama
-- declare @DegiskenAdi tip
declare @sayi int
declare @tarih datetime
declare @adres text
declare @yetki char
declare @metin varchar(max)

set @metin = 'Yazýlým'

print replace(@metin,'Yazýlým','SQL')