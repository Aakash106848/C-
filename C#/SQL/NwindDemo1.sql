use Northwind;

Select * from Employees;
select EmployeeID,FirstName,LastName,HireDate,City From Employees;
select EmployeeID,FirstName,LastName,HireDate,City From Employees where City = 'London';
select EmployeeID,FirstName,LastName,HireDate,City From Employees where City <> 'London';
select EmployeeID,FirstName,LastName,HireDate,City From Employees where HireDate >= '1-july-1991';
Select CategoryName ,Description from Categories;
select ContactName,CompanyName,ContactTitle,Phone From Customers;
Select EmployeeID,Title,FirstName,LastName,Region From Employees;
Select RegionID,RegionDescription From Region;
Select CompanyName,Fax,Phone,HomePage From Suppliers;
Select EmployeeID,FirstName,LastName,HireDate,City from Employees where (HireDate>='1-june-1992')And (HireDate<='15-december-1993');
Select EmployeeID,FirstName,LastName,HireDate,City from Employees where HireDate Between '1-june-1992' And '15-december-1993';
Select EmployeeID,FirstName,LastName,HireDate,City from Employees where HireDate Not Between '1-june-1992' And '15-december-1993';
Select EmployeeID,FirstName,LastName,HireDate,City from Employees where City ='London' OR City = 'Seattle';
Select EmployeeID,FirstName,LastName,HireDate,City from Employees where City IN ('Seattle','Tacoma','Redmond');
Select EmployeeID,FirstName,LastName,HireDate,City from Employees where City NOT IN ('Seattle','Tacoma','Redmond');
Select EmployeeID,FirstName,LastName,HireDate,City from Employees Where (FirstName Not Like 'M%') AND (LastName not like 'A%');
Select EmployeeID,FirstName,LastName,HireDate,City from Employees where FirstName Like '[a-M]%';
Select EmployeeID,FirstName,LastName,HireDate,City from Employees where FirstName like '[^a-M]%'
Select EmployeeID,FirstName,LastName,HireDate,City from Employees Order by City ;
Select EmployeeID,FirstName,LastName,HireDate,Country,City from Employees order by Country,City DESC ; 
Select EmployeeID,FirstName,LastName,HireDate,Country,City from Employees order by Country DESC,City DESC;
Select EmployeeID,FirstName,LastName,HireDate,Country,City from Employees order by Country ASC,City DESC ;
Select Title,FirstName,Lastname From Employees ORDER BY Title, Lastname;
Select Title,FirstName,Lastname From Employees ORDER BY 1,3;

select CategoryName,Description from Categories Order By CategoryName;
Select ContactName,CompanyName,ContactTitle,Phone From Customers Order by Phone;
select FirstName,LastName,HireDate from Employees Order by HireDate Desc;
select OrderID,OrderDate,ShippedDate,CustomerId,Freight from Orders order by Freight Desc;
select CompanyName,Fax,Phone,Homepage,Country from Suppliers order by Country Desc,CompanyName asc;
Select Title ,FirstName,LastName from Employees order by Title ASC ,LastName DESC; 

Select FirstName,LastName,Region from Employees where Region is null;
Select FirstName,LastName,Region from Employees where Region is not null;

select CompanyName , ContactName,City from Customers where City = 'Buenos Aires';
select ProductName,UnitPrice,QuantityPerUnit,UnitsInStock from Products Where UnitsInStock='0';
select OrderDate,ShippedDate,CustomerID,Freight from Orders Where OrderDate = '19-May-1997';
select FirstName,Lastname,Country from Employees where Country <>'USA';

Select FirstName+' '+LastName from Employees;
Select [OrderID],[Freight],[Freight]*0.1 Tax  From [Orders] where Freight>=500;
Select [OrderID],[Freight],[Freight]*0.1 AS Tax  From [Orders] where Freight>=500;