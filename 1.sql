-- �dev 
-- Kategori baz�nda her kategoride olan �r�nlerin stoklar�n� yaz�n�z.
-- �r�n baz�nda tekrarlanan sipari� say�s�n�n ortalamas�n� bulunuz.
-- �r�n baz�nda quantity olarak en fazla sipari� verilen �r�n�n ad�n� bulunuz.
-- 1. soru
select CategoryID,sum(UnitsInStock) as 'Kategoriye g�re stok' from Products group by CategoryID

-- 2.soru
select ProductID,avg(Quantity) as 'Ortalama' from [Order Details] group by ProductID
order by ProductID

-- 3.soru

select top(1) ProductID,sum(Quantity) from [Order Details] group by ProductID
order by 2 desc -- product �d => 60

select ProductName from Products where ProductID = 60

