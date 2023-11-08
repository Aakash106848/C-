use Northwind;
Select Count(*) As NumEmployees from Employees;
Select Sum (Quantity) AS TotalUnits From [Order Details] where ProductID=3;
Select AVG (UnitPrice) AS AveragePrice From Products;
Select City, COUNT(EmployeeID) AS NumEmployees From Employees Group By City ;
Select City , Count (EmployeeID) As NumEmployees From Employees Group By City Having Count (EmployeeID)>1;
 
 Select DISTINCT City from Employees ORDER BY city;
 Select COUNT(DISTINCT City) As NumCities From Employees;
 Select ProductID, Sum(Quantity) As TotalUnits From [Order Details] GROUP BY ProductID Having Sum(Quantity)<200;

 Select ProductID,AVG(UnitPrice) AS AveragePrice From [Products] GROUP BY ProductID having AVG(UnitPrice)>70 ORDER BY AveragePrice;
 Select CustomerID, Count(OrderID) As NumOrders From Orders Group By CustomerID Having Count(OrderID)>15 Order By NumOrders Desc;
 Select ProductID, UnitPrice From Products Where UnitPrice> 70 Order By UnitPrice;

 Select Freight, Round(Freight,1) As ApproxFreight From Orders;

 Select UnitPrice, Cast (UnitPrice AS CHAR(10)) FROM Products;
 Select UnitPrice,'$'+Cast (UnitPrice AS Char(10)) From Products;
 Select UPPER(FirstName),UPPER(LastName) From Employees;
 Select SUBSTRING(Address,1,10) From Customers;
 
 Select LastName,BirthDate,HireDate,DateDiff(year,BirthDate,HireDate) AS HireAge From Employees ORDER BY HireAge;
 Select FirstName,LastName ,BirthDate,DateName(Month,BirthDate) AS BirthMonth,DATEPART(Month,BirthDate) From Employees Order By DatePart(Month,BirthDate)

 Select CustomerID FROM Orders Where OrderID = 10290;
 Select CompanyName From Customers Where CustomerID=(Select CustomerID FROM Orders Where OrderID = 10290);
 Select CompanyName From Customers Where CustomerID IN (Select CustomerID From Orders Where OrderDate Between ('1-jan-1997' AND '31-dec-1997');
 Select CompanyName From Customers Where CustomerID IN (Select CustomerID From Orders Where OrderDate Between ('1997-01-01' AND '1997-12-31');

 Select * From Suppliers Where CompanyName='Grandma Kelly''s Homestead';


Select ProductName From Products Where CategoryID= (Select CategoryID From Categories Where CategoryName='Seafood');
select CompanyName from suppliers where supplierid in (select supplierid from products where categoryid =8);
Select CompanyName From Suppliers Where SupplierID IN (Select SupplierID From Products Where CategoryID = (Select CategoryID From Categories Where CategoryName = 'SeaFood'));

 Select Employees.EmployeeID,Employees.FirstName,Employees.LastName,Orders.OrderID,Orders.OrderDate From Employees Join Orders on (Employees.EmployeeID= Orders.EmployeeID) Order By Orders.OrderDate;
 Select E.EmployeeID,E.FirstName,E.LastName,O.OrderID,O.OrderDate From Employees E Join Orders O on (E.EmployeeID= O.EmployeeID) Order By O.OrderDate;

 Select O.OrderID ,C.CompanyName,E.FirstName,E.LastName From Orders o join Employees E ON( E.EmployeeID=O.EmployeeID)
 join  Customers C ON (C.CustomerID=O.CustomerID)
 Where O.ShippedDate >O.RequiredDAte AND O.OrderDate>'1-jan-1998' ORDER BY C.CompanyName;

 /* Create a report that shows the number of employees and customers from each city that has employees in it .*/
 Select Count (Distinct e.EmployeeID)AS numEmployees,Count(Distinct C.CustomerID) AS numCompanies,E.City,c.City
 From Employees E Right Join Customers C on (E.City = C.City) Group by E.City,C.City Order By numEmployees DESC;
  Select Count (Distinct e.EmployeeID)AS numEmployees,Count(Distinct C.CustomerID) AS numCompanies,E.City,c.City
 From Employees E  Join Customers C on (E.City = C.City) Group by E.City,C.City Order By numEmployees DESC;
  Select Count (Distinct e.EmployeeID)AS numEmployees,Count(Distinct C.CustomerID) AS numCompanies,E.City,c.City
 From Employees E Left Join Customers C on (E.City = C.City) Group by E.City,C.City Order By numEmployees DESC;
 
 Select CompanyName,Phone From Shippers Union Select CompanyName,Phone From Customers Union Select CompanyName,Phone From Suppliers Order By CompanyName; 
 Select O.OrderID,E.FirstName,E.LastName From Orders O Join Employees E on (E.EmployeeID=O.EmployeeID) Where (ShippedDate>RequiredDate) order by OrderID asc;
 Select  P.ProductName,Sum (O.Quantity)AS TotalQuantity From Products P join [Order Details] o on (O.ProductID=P.ProductID) Group By ProductName Having O.Quantity<200;

Select c.companyNAme,Count(o.orderID) As NumOrders From Customers c join Orders o on(c.customerID = o.CustomerID) where OrderDAte > '31-Dec-1996' Group By c.CompanyName HAving Count(o.OrderID) > 15 Order by NumOrders DESC:

Select c.companyNAme,o.orderID,od.UnitPrice * od.Quantity * (1-od.DisCount) AS TotalPrice From [Order Details] od 
join Orders o on (o.orderID = od.OrderId) join Customers c on(c.CustomerID = o.CustomerID) where od.UnitPrice*od.Quantity * (1-od.Discount) > 10000 order by TotalPrice Desc;

 Select ContactName, Phone From Suppliers Union Select FirstName+''+LastName As ContactName ,HomePhone AS Phone From Employees Union Select ContactName ,Phone From Customers

 Go
 Begin Transaction
 Update dbo.Categories 
 set CategoryName = 'Fishfood_venkat' Where CategoryName = 'SeaFood';
 --RollBack Transaction
 Commit Transaction
 Select * from dbo.Categories

 Begin Transaction
 Update dbo.Categories
 Set CategoryName='SeaFood'
 Where CategoryName = 'FishFood_venkat'
 Rollback Transaction

Select * from dbo.Categories;

Select e1.EmployeeID,e1.Title,e1.FirstName,e2.FirstName AS ManagerName From Employees e1 inner join Employees e2 on e1.reportsto=e2.EmployeeID
Select * From orders where Freight in (select Top 3 freight from orders Order by freight desc)order by Freight desc


Select min(BirthDate) From (Select top 3 BirthDate From Employees Order By BirthDate Desc)a;
Select Min(Birthdate ) From employees Where BirthDate in (Select top 3 BirthDate From Employees Order By BirthDate Desc);

select min(freight) from (select top 3 Freight from orders order by Freight desc)a;
select min(freight) from (select top 2 Freight from orders order by Freight desc)a;

Select * from Employees;
