-- Step 1: Create the Database
CREATE DATABASE AZ_Fashion_DB;
USE AZ_Fashion_DB;

-- Step 2: Create the Orders Table
CREATE TABLE Orders (
    Order_ID VARCHAR(10) PRIMARY KEY,
    Order_Date DATE,
    Item_Type VARCHAR(50),
    Customer_Type VARCHAR(20),
    Cost_PKR INT,
    Price_PKR INT,
    Profit_PKR INT,
    Status VARCHAR(20),
    Cancellation_Reason VARCHAR(100)
);

-- Step 3: Create the Inventory Table
CREATE TABLE Inventory (
    Material_Name VARCHAR(50),
    Unit VARCHAR(20),
    Opening_Stock INT,
    Used_In_Feb INT,
    Remaining_Stock INT,
    Status_Alert VARCHAR(20)
);

-- Inserting Transaction Data
INSERT INTO Orders VALUES 
('AZ-1001', '2025-02-01', 'Bridal Dress', 'New', 45000, 85000, 40000, 'Delivered', 'N/A'),
('AZ-1002', '2025-02-01', 'Party Dress', 'New', 8000, 12000, 4000, 'Delivered', 'N/A'),
('AZ-1003', '2025-02-02', 'Party Dress', 'Returning', 8500, 12500, 4000, 'Cancelled', 'Late Delivery'),
('AZ-1004', '2025-02-03', 'Mehndi Dress', 'New', 25000, 45000, 20000, 'Delivered', 'N/A'),
('AZ-1005', '2025-02-03', 'Party Dress', 'New', 7000, 11000, 4000, 'Cancelled', 'Late Delivery'),
('AZ-1006', '2025-02-03', 'Walima Dress', 'New', 50000, 95000, 45000, 'Delivered', 'N/A'),
('AZ-1007', '2025-02-05', 'Party Dress', 'Returning', 9000, 13000, 4000, 'Delivered', 'N/A'),
('AZ-1008', '2025-02-05', 'Party Dress', 'New', 8000, 12000, 4000, 'Cancelled', 'Material Unavailable'),
('AZ-1009', '2025-02-06', 'Bridal Dress', 'New', 48000, 90000, 42000, 'Delivered', 'N/A'),
('AZ-1010', '2025-02-06', 'Party Dress', 'New', 7500, 11500, 4000, 'Cancelled', 'Late Delivery'),
('AZ-1011', '2025-02-07', 'Mehndi Dress', 'Returning', 22000, 40000, 18000, 'Delivered', 'N/A'),
('AZ-1012', '2025-02-07', 'Party Dress', 'New', 8200, 12000, 3800, 'Cancelled', 'Late Delivery'),
('AZ-1013', '2025-02-07', 'Party Dress', 'New', 8000, 12000, 4000, 'Delivered', 'N/A'),
('AZ-1014', '2025-02-09', 'Walima Dress', 'New', 52000, 98000, 46000, 'Delivered', 'N/A'),
('AZ-1015', '2025-02-10', 'Party Dress', 'Returning', 7800, 11800, 4000, 'Delivered', 'N/A'),
('AZ-1016', '2025-02-10', 'Party Dress', 'New', 8000, 12000, 4000, 'Cancelled', 'Customer Changed Mind'),
('AZ-1017', '2025-02-12', 'Bridal Dress', 'Returning', 46000, 88000, 42000, 'Delivered', 'N/A'),
('AZ-1018', '2025-02-12', 'Party Dress', 'New', 8500, 12500, 4000, 'Cancelled', 'Late Delivery'),
('AZ-1019', '2025-02-12', 'Mehndi Dress', 'Returning', 24000, 42000, 18000, 'Delivered', 'N/A'),
('AZ-1020', '2025-02-13', 'Party Dress', 'New', 7500, 11000, 3500, 'Delivered', 'N/A'),
('AZ-1021', '2025-02-13', 'Party Dress', 'New', 8000, 12000, 4000, 'Cancelled', 'Late Delivery'),
('AZ-1022', '2025-02-15', 'Walima Dress', 'Returning', 55000, 100000, 45000, 'Delivered', 'N/A'),
('AZ-1023', '2025-02-15', 'Party Dress', 'New', 7800, 11800, 4000, 'Cancelled', 'Material Unavailable'),
('AZ-1024', '2025-02-18', 'Party Dress', 'New', 8200, 12200, 4000, 'Delivered', 'N/A'),
('AZ-1025', '2025-02-18', 'Mehndi Dress', 'New', 23000, 41000, 18000, 'Delivered', 'N/A'),
('AZ-1026', '2025-02-20', 'Party Dress', 'Returning', 9000, 13500, 4500, 'Delivered', 'N/A'),
('AZ-1027', '2025-02-20', 'Bridal Dress', 'New', 50000, 95000, 45000, 'Delivered', 'N/A'),
('AZ-1028', '2025-02-22', 'Party Dress', 'New', 7500, 11500, 4000, 'Cancelled', 'Late Delivery'),
('AZ-1029', '2025-02-22', 'Party Dress', 'New', 8000, 12000, 4000, 'Cancelled', 'Late Delivery'),
('AZ-1030', '2025-02-24', 'Walima Dress', 'New', 53000, 99000, 46000, 'Delivered', 'N/A'),
('AZ-1031', '2025-02-25', 'Party Dress', 'Returning', 8500, 12500, 4000, 'Delivered', 'N/A'),
('AZ-1032', '2025-02-25', 'Mehndi Dress', 'New', 26000, 46000, 20000, 'Delivered', 'N/A'),
('AZ-1033', '2025-02-25', 'Party Dress', 'New', 7000, 11000, 4000, 'Cancelled', 'Material Unavailable'),
('AZ-1034', '2025-02-28', 'Party Dress', 'New', 7800, 11800, 4000, 'Delivered', 'N/A'),
('AZ-1035', '2025-02-28', 'Party Dress', 'New', 8000, 12000, 4000, 'Cancelled', 'Late Delivery');

-- Inserting Inventory Data
INSERT INTO Inventory VALUES
('Chiffon Fabric', 'Yards', 100, 85, 15, 'Low Stock'),
('Raw Silk', 'Yards', 50, 20, 30, 'Adequate'),
('Velvet', 'Yards', 40, 35, 5, 'Critical'),
('Fancy Stone Work', 'Packets', 20, 18, 2, 'Critical'),
('Embroidery Thread', 'Reels', 50, 30, 20, 'Adequate'),
('Lining Fabric', 'Yards', 100, 90, 10, 'Low Stock'),
('Zari Thread', 'Reels', 30, 10, 20, 'Adequate');

-- Cacellation Rate by Product
SELECT 
    Item_Type, 
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Count,
    CONCAT(ROUND((SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2), '%') AS Cancellation_Rate
FROM Orders
GROUP BY Item_Type;

-- Root Causes for Cancellation
SELECT 
    Cancellation_Reason, 
    COUNT(*) AS Frequency,
    CONCAT(ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Orders WHERE Status = 'Cancelled'), 1), '%') AS Percentage
FROM Orders
WHERE Status = 'Cancelled'
GROUP BY Cancellation_Reason
ORDER BY Frequency DESC;

-- Calcualtion of Financial Lost (Profit Lost)
SELECT 
    Item_Type,
    SUM(Profit_PKR) AS Total_Lost_Profit
FROM Orders
WHERE Status = 'Cancelled'
GROUP BY Item_Type;

-- Criticial Inventory Gaps
SELECT Material_Name, Remaining_Stock, Status_Alert
FROM Inventory
WHERE Status_Alert IN ('Critical', 'Low Stock');

-- Which type of customer causes the most cancellations
SELECT 
    Customer_Type, 
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Orders,
    CONCAT(ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1), '%') AS Cancellation_Rate
FROM Orders
GROUP BY Customer_Type;

-- Identify the busiest weeks
SELECT 
    CONCAT('Week ', WEEK(Order_Date) - WEEK('2025-02-01') + 1) AS Week_Number,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancellations_In_Week
FROM Orders
GROUP BY Week_Number
ORDER BY Total_Orders DESC;

-- Calculate the daily usage rate
SELECT 
    Material_Name,
    Used_In_Feb AS Total_Used_Monthly,
    ROUND(Used_In_Feb / 28, 2) AS Avg_Daily_Usage, -- Assuming 28 days in Feb
    Remaining_Stock,
    CASE 
        WHEN Remaining_Stock < (Used_In_Feb / 28) * 7 THEN 'ORDER NOW (Less than 7 days stock)'
        ELSE 'Safe'
    END AS Action_Recommendation
FROM Inventory
WHERE Status_Alert IN ('Critical', 'Low Stock');
