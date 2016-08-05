CREATE PROCEDURE [dbo].[uspAddEmployee]
	@EmployeeTypeID INT, 
    @Title NVARCHAR(8) = NULL, 
    @FirstName NVARCHAR(50), 
    @MiddleName NCHAR(1), 
    @LastName NVARCHAR(50), 
    @Suffix NVARCHAR(10) = NULL, 
	@LoginName NVARCHAR(40),
	@UserTypeID INT,
	@DOB DATE,
    @AddressLine1 NVARCHAR(60), 
    @AddressLine2 NVARCHAR(60) = NULL, 
    @City NVARCHAR(30), 
    @StateProvince NVARCHAR(80), 
    @PostalCode NVARCHAR(15), 
	@Country NVARCHAR(50),
    @SpatialLocation [sys].[geography] = NULL, 
    @EmailAddress NVARCHAR(50), 
    @PhoneNumber NVARCHAR(25),
	@Password BINARY(64),
	@CreatedBy INT, 
    @UpdatedBy INT 

AS
	BEGIN
	SET NOCOUNT ON

	DECLARE @Salt UNIQUEIDENTIFIER = NEWID()
	BEGIN TRY
		INSERT INTO dbo.Employee(EmployeeTypeID,Title,FirstName,MiddleName,LastName,Suffix,LoginName,UserTypeID,DOB,
									AddressLine1,AddressLine2,City,StateProvince,PostalCode,Country,SpatialLocation,
									EmailAddress,PhoneNumber,[Password],Salt,CreatedBy,UpdatedBy)
		VALUES(@EmployeeTypeID,@Title,@FirstName,@MiddleName,@LastName,@Suffix,@LoginName,@UserTypeID,@DOB,
				@AddressLine1,@AddressLine2,@City,@StateProvince,@PostalCode,@Country,@SpatialLocation,
				@EmailAddress,@PhoneNumber,HASHBYTES('SHA2_512',@Password + CAST(@Salt AS NVARCHAR(36))),@Salt,@CreatedBy,@UpdatedBy)
	END TRY
	BEGIN CATCH
	END CATCH
	END

