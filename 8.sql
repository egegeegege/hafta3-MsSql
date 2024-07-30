-- Try-Catch (Error Handling) Hata Yakalama
-- try catch syntax (yazým hatalarýný) yakalayamaz. Yani yazýlým diline uygun keywordleri kullanmamýz gereklidir.

/*
Yapý
begin try
	yapacaðýmýz iþ (hata çýkma olasýlýðý olan iþ)
end try
begin catch
	hata durumunda yapýlacak iþ
end catch

*/

begin try
	print 3/0
end try
begin catch
	print 'Hata Oluþtu'
end catch

begin try
	print 3/0
end try
begin catch
	select
		[Hata Satýrý] = ERROR_LINE(),
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
		[Hata Satýrý] = ERROR_LINE(),
		[Hata Kodu] = ERROR_NUMBER(),
		[Hata Derecesi] = ERROR_SEVERITY(),
		[Hata Durum] = ERROR_STATE(),
		[Hata Durum] = ERROR_MESSAGE(),
		[Hata Tarihi] = GETDATE()
end catch

/* 
Hata Dereceleri
0 ve 10: Kullanýcýnýn veri giriþinden kaynaklanan hatalardýr.
11-16 arasý: Kullanýcýnýn düzeltebileceði hatalar.
17: Yetersiz kaynak hatasý (Diskin dolu olmasý yada tablonun salt okunur olmasý)
18: Yazýlýmdan kaynaklanan hatalar
20-25: Fatal Error (Kritik Hatalar)
*/
