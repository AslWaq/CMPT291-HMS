CREATE TABLE [dbo].[Table]
(
	[prescription_id] INT NOT NULL PRIMARY KEY, 
    [staff_id] INT NOT NULL, 
    [case_id] INT NOT NULL, 
    [medicine_id] INT NOT NULL, 
    [quantity] INT NOT NULL, 
    [refills] INT NOT NULL, 
    [cost] MONEY NOT NULL
)
