--Select-- 
-- * Tüm kolonları getir demek. From hangi tablo olduğunu söyler.
Select ContactName Adi,CompanyName Sirketadi,City Sehir from Customers
--where sorgulama ekler. sadece şehri berlin olanları göster gibi
Select * from Customers where City = 'Berlin'
--veya
select * from Products where CategoryID = 1 or CategoryID= 3
select * from Products where CategoryID = 1 or UnitPrice > 10

--order by sırala
select * from Products order by UnitPrice desc --ascending(artan) default değeridir. desc (azalandır)
--count tüm satırları say-
Select count(*) Adet from Products where CategoryID=2
--datayı categoryID ye göre grupla demek. tekrar etmiycek şekilde listele demek. having tekrar sayısı. where fiyatı 20den az
Select count(*) adet from Products 
Select CategoryID , count(*) tekrarsayısı from Products where UnitPrice<20 group by CategoryID having count(*) <10
--inner join ilişki
Select  Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName
from Products inner join Categories 
--on durumunda,şartında--onlar eşitse onları yan yana getir
on Products.CategoryID =Categories.CategoryID
where Products.UnitPrice>10


--DTO Data transformation Object joinler dir

--solda olup sağda olmayanlarıda getir. left
Select * from Products p left join [Order Details] od
on p.ProductID=od.ProductID

Select * from Customers c left join Orders o
on c.CustomerID=o.CustomerID
where o.CustomerID is null --hiç satış yapmayanlar