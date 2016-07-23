CREATE TABLE [dbo].[EmployeeLeave]
(
	[EmployeeID] INT NOT NULL, 
    [LeaveID] INT NOT NULL, 
    [RequestDate] DATETIME NOT NULL, 
    [LeaveStarts] DATETIME NOT NULL, 
    [LeaveEnds] DATETIME NOT NULL,
	Duration As Datediff(dd,LeaveStarts,LeaveEnds),
	Comments Varchar (500) Null,
	CreatedBy int not null, 
    [CreateDate] DATETIME NOT NULL DEFAULT getdate(), 
    [UpdatedBy] INT NOT NULL, 
    [UpdateDate] DATETIME NOT NULL DEFAULT getdate(),
	CONSTRAINT PK_EmployeeLeave PRIMARY KEY (EmployeeID,LeaveID)
	
)
