-- SQL queries for common bookstore operations

-- Query 1: Retrieve all books in the database.
SELECT * FROM Books;

-- Query 2: Find books by a specific author.
SELECT * FROM Books
WHERE AuthorID = [AuthorID];

-- Query 3: Calculate total sales for a particular book.
SELECT Title, SUM(Quantity) AS TotalSales
FROM Books
JOIN OrderDetails ON Books.BookID = OrderDetails.BookID
GROUP BY Title
HAVING Title = '[Book Title]';

-- Query 4: Determine top-selling books or authors.
-- Top-selling books
SELECT Title, SUM(Quantity) AS TotalSales
FROM Books
JOIN OrderDetails ON Books.BookID = OrderDetails.BookID
GROUP BY Title
ORDER BY TotalSales DESC
LIMIT 10;

-- Top-selling authors
SELECT Authors.AuthorName, SUM(Quantity) AS TotalSales
FROM Authors
JOIN Books ON Authors.AuthorID = Books.AuthorID
JOIN OrderDetails ON Books.BookID = OrderDetails.BookID
GROUP BY Authors.AuthorName
ORDER BY TotalSales DESC
LIMIT 10;

-- Query 5: Find the most recent orders.
SELECT OrderID, CustomerID, OrderDate
FROM Orders
ORDER BY OrderDate DESC
LIMIT 10;

-- Query 6: Calculate average order value.
SELECT AVG(TotalAmount) AS AverageOrderValue
FROM Orders;

-- Query 7: Update customer information.
UPDATE Customers
SET FirstName = '[New First Name]'
WHERE CustomerID = [CustomerID];

-- Query 8: Delete a book from the inventory.
DELETE FROM Books
WHERE BookID = [BookID];
