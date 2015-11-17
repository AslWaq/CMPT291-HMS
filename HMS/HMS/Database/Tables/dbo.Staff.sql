CREATE TABLE [dbo].[Table]
(
	[staff_id] INT NOT NULL PRIMARY KEY, 
    [fname] VARCHAR(20) NOT NULL, 
    [mname] VARCHAR(20) NOT NULL, 
    [lname] VARCHAR(20) NOT NULL, 
    [suite] INT NOT NULL, 
    [street] VARCHAR(50) NOT NULL, 
    [password] VARCHAR(10) NOT NULL, 
    [admin] INT NOT NULL, 
    [postal_code] VARCHAR(20) NOT NULL, 
    [city] VARCHAR(50) NOT NULL, 
    [province] VARCHAR(20) NOT NULL, 
    [staff_type] VARCHAR(20) NOT NULL, 
    [department] VARCHAR(20) NOT NULL
)
