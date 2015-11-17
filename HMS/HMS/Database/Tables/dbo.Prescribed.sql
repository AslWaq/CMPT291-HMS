CREATE TABLE [dbo].[Table]
(
	[case_id] INT NOT NULL , 
    [prescription_id] INT NOT NULL, 
    [date] DATE NOT NULL, 
    [time] TIME NOT NULL, 
    PRIMARY KEY ([prescription_id], [case_id])
)
