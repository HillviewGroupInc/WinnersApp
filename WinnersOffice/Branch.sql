CREATE TABLE [dbo].[Branch]
(
	[BranchID] INT NOT NULL PRIMARY KEY, 
    [BranchName] NVARCHAR(50) NOT NULL, 
    [Address1] NVARCHAR(60) NOT NULL, 
    [Address2] NVARCHAR(60) NULL, 
    [City] NVARCHAR(30) NOT NULL, 
    [StateProvince] NVARCHAR(80) NOT NULL, 
    [PostalCode] NVARCHAR(15) NOT NULL, 
    [Country] NVARCHAR(50) NOT NULL, 
    [CreatedBy] INT NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT getdate(), 
    [UpdatedBy] INT NOT NULL, 
    [UpdateDate] DATETIME NOT NULL DEFAULT getdate()
)
