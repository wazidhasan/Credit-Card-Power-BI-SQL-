create database credit_card
use credit_card


-- 1. Create cc_detail table
CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);
GO

-- 2. Create cust_detail table
CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);
GO

-- 3. Import data into SQL Server using BULK INSERT

-- BULK INSERT for cc_detail table
BULK INSERT cc_detail
FROM 'G:\POWERBI_DATA\Credit_card project\credit_card.csv' 
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n', 
    FIRSTROW = 2, 
    FORMAT = 'CSV'
);
GO

-- BULK INSERT for cust_detail table
BULK INSERT cust_detail
FROM 'G:\POWERBI_DATA\Credit_card project\customer.csv' 
WITH (
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = '\n', 
    FIRSTROW = 2, 
    FORMAT = 'CSV'
);
GO
select*from cc_detail;
-----------------------------------------------------------------------------------------
--========================================================================================

-- 4. Insert additional data into SQL Server using BULK INSERT

-- BULK INSERT for additional data (week-53) in cc_detail table
--BULK INSERT cc_detail
--FROM 'D:\cc_add.csv' 
--WITH (
  --  FIELDTERMINATOR = ',', 
    --ROWTERMINATOR = '\n', 
    --FIRSTROW = 2, 
    --FORMAT = 'CSV');
--GO

-- BULK INSERT for additional data (week-53) in cust_detail table
--BULK INSERT cust_detail
--FROM 'D:\cust_add.csv' 
--WITH (
  --  FIELDTERMINATOR = ',', 
    --ROWTERMINATOR = '\n', 
    --FIRSTROW = 2, 
    --FORMAT = 'CSV');GO
	SELECT @@SERVERNAME AS 'Server Name';