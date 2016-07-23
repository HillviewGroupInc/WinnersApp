CREATE TABLE [dbo].[EmployeeType]
(
	[EmployeeTypeID] INT NOT NULL IDENTITY(1,1), 
    [Name] NVARCHAR(50) NOT NULL, 
    [Description] NVARCHAR(200) NULL, 
    [CreatedBy] INT NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT getdate(), 
    [UpdatedBy] INT NOT NULL, 
    [UpdateDate] DATETIME NOT NULL DEFAULT getdate() ,
	CONSTRAINT PK_EmployeeType PRIMARY KEY (EmployeeTypeID)
)
