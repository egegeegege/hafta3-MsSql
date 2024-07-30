-- Ödev 
-- Kategori bazýnda her kategoride olan ürünlerin stoklarýný yazýnýz.
-- ürün bazýnda tekrarlanan sipariþ sayýsýnýn ortalamasýný bulunuz.
-- ürün bazýnda quantity olarak en fazla sipariþ verilen ürünün adýný bulunuz.
-- 1. soru
select CategoryID,sum(UnitsInStock) as 'Kategoriye göre stok' from Products group by CategoryID

-- 2.soru
select ProductID,avg(Quantity) as 'Ortalama' from [Order Details] group by ProductID
order by ProductID

-- 3.soru

select top(1) ProductID,sum(Quantity) from [Order Details] group by ProductID
order by 2 desc -- product ýd => 60

select ProductName from Products where ProductID = 60

