-- Insert data into the online bookstore tables

-- Insert sample authors
INSERT INTO Authors (AuthorID, AuthorName)
VALUES
    (1, 'Author 1'),
    (2, 'Author 2'),
    (3, 'Author 3'),
    (4, 'Author 4');

-- Insert sample customers
INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com'),
    (3, 'Alice', 'Johnson', 'alice.johnson@example.com'),
    (4, 'Bob', 'Brown', 'bob.brown@example.com');

-- Insert sample books
INSERT INTO Books (BookID, Title, AuthorID, Genre, Price)
VALUES
    (1, 'Book Title 1', 1, 'Fiction', 19.99),
    (2, 'Book Title 2', 2, 'Mystery', 14.99),
    (3, 'Book Title 3', 3, 'Science Fiction', 24.99),
    (4, 'Book Title 4', 4, 'Non-Fiction', 29.99);

-- Insert sample orders
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2023-01-10', 44.98),
    (2, 2, '2023-02-15', 14.99),
    (3, 3, '2023-03-20', 24.99),
    (4, 4, '2023-04-25', 59.98);

-- Insert sample order details
INSERT INTO OrderDetails (OrderDetailID, OrderID, BookID, Quantity, Price)
VALUES
    (1, 1, 1, 2, 39.98),
    (2, 2, 2, 1, 14.99),
    (3, 3, 3, 1, 24.99),
    (4, 4, 4, 2, 59.98);
