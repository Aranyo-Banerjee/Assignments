Use [Assignments]

--1. Display the orders placed by customer with phone number 030-0074321
Select * from tblOrder
where CustomerId IN (Select Id from tblCustomer where Phone = '030-0074321')


--2. Display all orders for the product Seafood. (Since category column not available)
Select * from tblOrder
where Id IN (Select OrderId from tblOrderItem where ProductId IN (Select Id from tblProduct where ProductName = 'Seafood')) 


--3. Display the orders placed by customers not in London
Select * from tblOrder
where CustomerId IN (Select Id from tblCustomer where CITY <> 'London')


--4. Display the orders placed for product Chai
Select * from tblOrder
where Id IN (Select OrderId from tblOrderItem where ProductId IN (Select Id from tblProduct where ProductName = 'Chai'))


--5. Employee data not available