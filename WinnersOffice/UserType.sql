CREATE TABLE [dbo].[UserType]
(
	[UserTypeID] INT NOT NULL IDENTITY(1,1), 
    [UserType] NVARCHAR(50) NOT NULL, 
    [Comment] NVARCHAR(500) NULL, 
    [CreatedBy] INT NOT NULL, 
    [CreateDate] DATETIME NOT NULL DEFAULT getdate(), 
    [UpdatedBy] INT NOT NULL, 
    [UpdateDate] DATETIME NOT NULL DEFAULT getdate(),
	CONSTRAINT PK_UserType PRIMARY KEY (UserTypeID)
)
