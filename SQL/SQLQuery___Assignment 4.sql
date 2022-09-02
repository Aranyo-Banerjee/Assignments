Use [Assignments]

--1. Shipping details not available


--2. Display the order details placed first. (Since no employee data available)
Select top 1* from tblOrder
order by OrderDate ASC


--3. Display the order details placed recently. (Since no employee data available)
Select top 1* from tblOrder
order by OrderDate DESC


--4. Display most expensive and least expensive products (name and unit price)
Declare @Max int, @Min int
Select @Max = MAX(UnitPrice) from tblProduct
Select @Min = MIN(UnitPrice) from tblProduct
Select ProductName, UnitPrice from tblProduct 
where UnitPrice IN (@MAX, @Min)
order by UnitPrice DESC

--5. Display products that are out of stock
Select * from tblProduct where IsDicontinued = 1


--6. Data not available


--7. Data not available


--8. Display complete list of customers, the order Id and the date of any orders they have made
Select tblCustomer.*, tblOrder.Id as OrderId, OrderDate
from tblCustomer
join tblOrder
on tblCustomer.Id = tblOrder.CustomerId


--9. Display customer who has placed maximum orders
SELECT CustomerId, Count(*) as counts 
into #temptable FROM tblOrder 
GROUP BY CustomerId 

Select * from tblCustomer
where Id IN (Select CustomerId from #temptable where counts = (Select MAX(counts) from #temptable))
Drop table #temptable



--10. Display the customer Id whose name has substring 'RA'
Select Id as CustomerId from tblCustomer
where FirstName LIKE '%RA%' or LastName LIKE '%RA%'


--11. Company details not available