CREATE DATABASE Shopp;
 Use Shopp;
  CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Address VARCHAR(200),
    Email VARCHAR(200)
);

CREATE TABLE Orderr(
    OrderrID INT PRIMARY KEY,
    OrderrDate DATE,
    Status VARCHAR(50),
    TotalAmount DECIMAL(10, 2),
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

CREATE TABLE OrderDetail (
    OrderDetailID INT PRIMARY KEY,
    Quantity INT,
    Price DECIMAL(10, 2),
    OrderrID INT,
    ProductID INT,
    FOREIGN KEY (OrderrID) REFERENCES Orderr(OrderrID),
    FOREIGN KEY (ProductID) REFERENCES Productt (ProducttID)
);

CREATE TABLE Productt(
    ProductID INT PRIMARY KEY,
    Name VARCHAR(255),
    Category VARCHAR(255),
    Description TEXT,
    Price DECIMAL(10, 2)
);

CREATE TABLE Supplier (
    SupplierID INT PRIMARY KEY,
    ContactInfo VARCHAR(255),
    Name VARCHAR(255)
);

CREATE TABLE Orderr_Productt (
    OrderrID INT,
    ProducttID INT,
    PRIMARY KEY (OrderrID, ProducttID),
    FOREIGN KEY (OrderrID) REFERENCES Orderr(OrderrID),
    FOREIGN KEY (ProducttID) REFERENCES Productt(ProductID)
);

CREATE TABLE Supplier_Productt (
    SupplierID INT,
    ProducttID INT,
    PRIMARY KEY (SupplierID, ProducttID),
    FOREIGN KEY (SupplierID) REFERENCES Supplier(SupplierID),
    FOREIGN KEY (ProducttID) REFERENCES Productt(ProducttID)
);

CREATE TABLE Associative (
    OrderrDetailID INT,
    OrderrID INT,
    ProducttID INT,
    PRIMARY KEY (OrderrDetailID, OrderID, ProducttID),
    FOREIGN KEY (OrderrDetailID) REFERENCES OrderrDetail(OrderrDetailID),
    FOREIGN KEY (OrderrID) REFERENCES Orderr(OrderrID),
    FOREIGN KEY (ProducttID) REFERENCES Productt(ProducttID)
);
