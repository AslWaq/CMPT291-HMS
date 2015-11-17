CREATE TABLE [dbo].[Table]
(
	[name] VARCHAR(50) NOT NULL PRIMARY KEY, 
    [capacity] INT NOT NULL, 
    [status] VARCHAR(20) NOT NULL, 
    [cost_per_night] MONEY NOT NULL, 
    [type] VARCHAR(20) NOT NULL
)
