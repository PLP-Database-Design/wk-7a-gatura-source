--QUESTION 1
CREATE TABLE ProductDetail{
	OrderID INT,
	CustomerName VARCHAR(20),
	Products VARCHAR(10),
	PRIMARY KEY(OrderID)
};

--QUESTION 2

CREATE TABLE Orders (
	OrderID INT PRIMARY KEY,
	CustomerName VARCHAR(100),
);

CREATE TABLE OrderDetails(
	OrderID INT,
	Product VARCHAR(100),
	Quantity INT,
	PRIMARY KEY(OrderID, Product),
	FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);