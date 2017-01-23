--substring(ex,star,end)
SELECT SUBSTRING(Name, 1, 2) AS ProductName, ListPrice  
FROM Production.Product order by ProductName

SELECT Name FROM Production.Product order by Name

select * from Production.Product


SELECT SUBSTRING(Name, 1, 30) AS ProductName, ListPrice  
FROM Production.Product 
WHERE  ListPrice LIKE '3%';  
 

SELECT SUBSTRING(Name, 1, 30) AS ProductName, ListPrice  
FROM Production.Product  
WHERE CONVERT(int, ListPrice) LIKE '3%';  