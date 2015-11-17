CREATE TABLE [dbo].[Table]
(
	[patient_id] INT NOT NULL PRIMARY KEY, 
    [f_name] VARCHAR(20) NOT NULL, 
    [m_name] VARCHAR(20) NOT NULL, 
    [l_name] VARCHAR(20) NOT NULL, 
    [suite] INT NOT NULL, 
    [street] VARCHAR(20) NOT NULL, 
    [postal_code] VARCHAR(10) NOT NULL, 
    [province] VARCHAR(20) NOT NULL, 
    [dob] DATE NOT NULL, 
    [telephone_number] VARCHAR(20) NOT NULL, 
    [emergency_number] VARCHAR(20) NOT NULL, 
    [emergency_name] VARCHAR(50) NOT NULL, 
    [emergency_relationship] VARCHAR(20) NOT NULL, 
    [patient_type] VARCHAR(20) NOT NULL
)
