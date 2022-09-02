Use [Assignments]

--1. Display details of customers who are from country Germany
Select * from tblCustomer where Country = 'Germany'


--2. Display full name of the customers
Select FirstName + ' ' + LastName as FullName from tblCustomer


--3. Fax number data not available


--4. Display customer details whose name holds second letter as U
Select * from tblCustomer where FirstName LIKE '_u%'


--5. Display order details where unit price is greater than 10 and less than 20
Select tblOrder.Id, OrderDate, OrderNumber,CustomerId, UnitPrice, Quantity, TotalAmount from tblOrder
join tblOrderItem
on tblOrder.Id=tblOrderItem.OrderId
where UnitPrice > 10 and UnitPrice < 20


--6. Arrange orders by date in ascending order. (Since shipping details not available)
Select * from tblOrder
order by OrderDate ASC


--7.Shipping details not available


--8. Shipping details not available


--9. DIsplay average quantity ordered for every product
Select ProductName, AVG(Quantity) as AverageQty from tblOrderItem
join tblProduct
on tblOrderItem.ProductId=tblProduct.Id
group by ProductName


--10. Shpiping details not available


--11. Employee details not available


--12. Display order bill with relevant details (here product name, unit price and quantity used since other data not available)
      -- Displaying the bill for sample order id = 2
Select OrderID, ProductName, tblProduct.UnitPrice, Quantity from tblProduct
join tblOrderItem
on tblProduct.Id=tblOrderItem.ProductId
where OrderId = 2


--13. Shipping details not available