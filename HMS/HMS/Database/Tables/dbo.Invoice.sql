CREATE TABLE [dbo].[Table]
(
	[invoice_id] INT NOT NULL PRIMARY KEY, 
    [date] DATE NOT NULL, 
    [subtotal] MONEY NOT NULL, 
    [gst] MONEY NOT NULL, 
    [total] MONEY NOT NULL, 
    [deductible_amount] MONEY NOT NULL, 
    [amount_paid] MONEY NOT NULL, 
    [payment_type] VARCHAR(20) NOT NULL
)
