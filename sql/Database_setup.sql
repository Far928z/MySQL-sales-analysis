
CREATE DATABASE sales_analysis;

USE sales_analysis;

CREATE TABLE sales (
    Sale_ID INT PRIMARY KEY,
    Sale_Date DATE,
    Product VARCHAR(50),
    Category VARCHAR(50),
    Region VARCHAR(50),
    Quantity INT,
    Unit_Price DECIMAL(10,2),
    Total_Sales DECIMAL(10,2),
    Profit DECIMAL(10,2)
);

