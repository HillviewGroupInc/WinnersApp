CREATE TABLE [dbo].[Leave]
(
	[LeaveID] INT NOT NULL IDENTITY(100,100),
    [Name] VARCHAR(50) NOT NULL, 
    [Description] VARCHAR(200) NULL, 
    [CreatedBy] INT NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT Getdate(), 
    [UpdatedBy] INT NOT NULL, 
    [UpdateDate] DATETIME NOT NULL DEFAULT Getdate()
)
