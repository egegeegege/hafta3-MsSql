-- Try-Catch (Error Handling) Hata Yakalama
-- try catch syntax (yaz�m hatalar�n�) yakalayamaz. Yani yaz�l�m diline uygun keywordleri kullanmam�z gereklidir.

/*
Yap�
begin try
	yapaca��m�z i� (hata ��kma olas�l��� olan i�)
end try
begin catch
	hata durumunda yap�lacak i�
end catch

*/

begin try
	print 3/0
end try
begin catch
	print 'Hata Olu�tu'
end catch

begin try
	print 3/0
end try
begin catch
	select
		[Hata Sat�r�] = ERROR_LINE(),
		[Hata Kodu] = ERROR_NUMBER(),
		[Hata Derecesi] = ERROR_SEVERITY(),
		[Hata Durum] = ERROR_STATE(),
		[Hata Durum] = ERROR_MESSAGE(),
		[Hata Tarihi] = GETDATE()
end catch

begin try
	insert into Employees (FirstName) values ('Tahsin')
end try
begin catch
	select
		[Hata Sat�r�] = ERROR_LINE(),
		[Hata Kodu] = ERROR_NUMBER(),
		[Hata Derecesi] = ERROR_SEVERITY(),
		[Hata Durum] = ERROR_STATE(),
		[Hata Durum] = ERROR_MESSAGE(),
		[Hata Tarihi] = GETDATE()
end catch

/* 
Hata Dereceleri
0 ve 10: Kullan�c�n�n veri giri�inden kaynaklanan hatalard�r.
11-16 aras�: Kullan�c�n�n d�zeltebilece�i hatalar.
17: Yetersiz kaynak hatas� (Diskin dolu olmas� yada tablonun salt okunur olmas�)
18: Yaz�l�mdan kaynaklanan hatalar
20-25: Fatal Error (Kritik Hatalar)
*/
