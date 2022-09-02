 
 --New Database with name 'Assignments' created graphically. 


 --1. Creating tables by applying Primary and Foreign keys
 Create Table tblProduct
 (
 Id int Primary Key,
 ProductName nvarchar(50),
 UnitPrice decimal(12,2),
 Package nvarchar(30),
 IsDicontinued bit
 )


 Create Table tblCustomer
 (
 Id int Primary Key,
 FirstName nvarchar(40) NOT NULL,
 LastName nvarchar(40),
 City nvarchar(40),
 Country nvarchar(40),
 Phone nvarchar(20)
 )


 Create Table tblOrder
 (
 Id int Primary Key,
 OrderDate datetime NOT NULL,
 OrderNumber nvarchar(10),
 CustomerId int Foreign Key references tblCustomer(Id),
 TotalAmount decimal(12,2)
 )


 Create Table tblOrderItem
 (
 Id int Primary Key,
 OrderId int Foreign Key references tblOrder(Id),
 ProductId int Foreign Key references tblProduct(Id),
 UnitPrice decimal(12,2),
 Quantity int
 )


 --2. Inserting records in all tables
 Insert Into tblCustomer(Id, FirstName, LastName, City, Country, Phone)
 Values (1,'John','Smith','Chicago','America','012-5553890'),
 (2,'Toni','Kroos','Munich','Germany','049-3091820'),
 (3,'Ram','Sharma','Delhi','India','033-25380073'),
 (4,'Kurt','Logan','London','UK','048-0054869'),
 (5,'Caira','Grant','New York','America','030-0074321')


 Insert Into tblOrder(Id, OrderDate, OrderNumber, CustomerId, TotalAmount)
 Values (1,'2022-04-22 10:34:54.43','P1602',2,10.00),
 (2,'2022-05-15 06:25:53.11','P1712',3,500.00),
 (3,'2022-05-24 11:30:45.21','P2031',2,10.00),
 (4,'2022-07-11 05:34:15.54','P1414',1,300.00),
 (5,'2022-06-14 10:41:10.35','P1536',4,30.00),
 (6,'2022-06-15 07:31:10.15','P1589',5,60.00),
 (7,'2022-06-24 09:15:29.44','P1536',5,50.00)


 Insert Into tblOrderItem(Id, OrderId, ProductId, UnitPrice, Quantity)
 Values (1,2,2,250.00,2),
 (2,3,1,10.00,1),
 (3,4,3,150.00,2),
 (4,1,1,10.00,1),
 (5,6,4,15.00,4),
 (6,7,5,50.00,1),
 (7,5,4,15.00,2)


 Insert Into tblProduct(Id, ProductName, UnitPrice, Package, IsDicontinued)
 Values (1,'Chai',10.00,'Xpress','False'),
 (2,'Seafood',250.00,'Xpress','False'),
 (3,'Burger',150.00,'Xpress','False'),
 (4,'Soft drinks',15.00,'Xpress','False'),
 (5,'Snacks',50.00,'Xpress','False')


 --3. FirstName attribute should not accept null value
	--Done while designing the Customer table


 --4. OrderDate should not accept null value
	--Done while designing the Order table


 --5. Display all customer details
 Select * from tblCustomer


 --6. Display customer details for those countries starting with A or I
 Select * from tblCustomer where Country LIKE 'A%' OR Country LIKE 'I%'


 --7. Display customer details for whose third character is 'i'
 Select * from tblCustomer where FirstName LIKE '__i%'